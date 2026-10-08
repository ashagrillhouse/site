/* ---------- Language switch ---------- */
function showLang(lang) {
    document.querySelectorAll('.lang').forEach(el => el.style.display = 'none');
    document.querySelector('.' + lang).style.display = 'block';
    document.querySelectorAll('.lang-buttons button').forEach(b => b.classList.toggle('active', b.dataset.lang === lang));
}
showLang('en');

/* ---------- Visit counter ---------- */
function updateVisitCount(startDate) {
    const days = Math.floor((new Date() - new Date(startDate)) / 86400000);
    document.getElementById("visit_num").textContent = `Total visit: ${days * 7}`;
}
updateVisitCount("2025-04-01");

/* ---------- Application form ---------- */
document.addEventListener("DOMContentLoaded", () => {
    const $ = (s) => document.querySelector(s);
    const form = $('#applyForm');
    const SUBMIT_URL = form.dataset.url;          // set in career.html: data-url="..."
    const CONTACT = '9932134803';
    const MAX_MB = 5;
    const files = { photo: null, id_proof: null };
    const empties = {};
    const urls = {};

    /* ----- previews ----- */
    document.querySelectorAll('[data-preview]').forEach(b => empties[b.dataset.preview] = b.innerHTML);

    function render(key) {
        const box = $(`[data-preview="${key}"]`), f = files[key];
        if (urls[key]) { URL.revokeObjectURL(urls[key]); urls[key] = null; }
        box.classList.toggle('has-file', !!f);
        if (!f) { box.innerHTML = empties[key]; return; }
        if (f.type.startsWith('image/')) {
            urls[key] = URL.createObjectURL(f);
            box.innerHTML = `<img src="${urls[key]}" alt="Preview">`;
        } else {
            box.innerHTML = `<div class="pdf"><i class="fas fa-file-pdf"></i></div><span class="fname"></span>`;
            box.querySelector('.fname').textContent = f.name;
        }
        box.insertAdjacentHTML('beforeend', `<button type="button" class="rm" data-rm="${key}" aria-label="Remove"><i class="fas fa-times"></i></button>`);
    }

    function setFile(key, f) {
        if (!f) return;
        const okType = f.type.startsWith('image/') || (key === 'id_proof' && f.type === 'application/pdf');
        if (!okType) return show('err', key === 'photo' ? 'Please choose an image file.' : 'Please choose an image or PDF file.');
        if (f.size > MAX_MB * 1048576) return show('err', `File is too large. Maximum size is ${MAX_MB} MB.`);
        msg.hidden = true;
        files[key] = f;
        render(key);
    }

    document.querySelectorAll('input[data-file]').forEach(inp => {
        inp.addEventListener('change', () => { setFile(inp.dataset.file, inp.files[0]); inp.value = ''; });
    });
    form.addEventListener('click', e => {
        const rm = e.target.closest('[data-rm]');
        if (rm) { files[rm.dataset.rm] = null; render(rm.dataset.rm); }
    });

    /* ----- camera ----- */
    const modal = $('#camModal'), video = $('#camVideo');
    let stream = null, camKey = null, facing = 'user';

    async function startStream() {
        stopStream();
        stream = await navigator.mediaDevices.getUserMedia({ video: { facingMode: facing }, audio: false });
        video.srcObject = stream;
        video.style.transform = facing === 'user' ? 'scaleX(-1)' : 'none';
    }
    function stopStream() {
        if (stream) stream.getTracks().forEach(t => t.stop());
        stream = null;
    }
    function closeCam() { stopStream(); modal.hidden = true; }

    async function openCam(key, face) {
        camKey = key; facing = face;
        const fallback = () => $(`#${key}Capture`).click();   // phone's own camera app
        if (!navigator.mediaDevices || !navigator.mediaDevices.getUserMedia) return fallback();
        try { await startStream(); modal.hidden = false; }
        catch (err) { fallback(); }
    }

    document.querySelectorAll('[data-cam]').forEach(b => b.addEventListener('click', () => openCam(b.dataset.cam, b.dataset.facing)));
    $('#camClose').addEventListener('click', closeCam);
    $('#camFlip').addEventListener('click', async () => {
        facing = facing === 'user' ? 'environment' : 'user';
        try { await startStream(); } catch (e) { closeCam(); }
    });
    $('#camShot').addEventListener('click', () => {
        if (!video.videoWidth) return;
        const c = document.createElement('canvas');
        c.width = video.videoWidth; c.height = video.videoHeight;
        c.getContext('2d').drawImage(video, 0, 0);
        c.toBlob(blob => {
            if (blob) setFile(camKey, new File([blob], `${camKey}.jpg`, { type: 'image/jpeg' }));
            closeCam();
        }, 'image/jpeg', 0.9);
    });
    document.addEventListener('keydown', e => { if (e.key === 'Escape' && !modal.hidden) closeCam(); });

    /* ----- human check (2-digit + or -) ----- */
    let answer = 0, question = '';
    const rnd = (a, b) => Math.floor(Math.random() * (b - a + 1)) + a;
    function newCaptcha() {
        let a = rnd(10, 99), b = rnd(10, 99);
        const op = Math.random() < 0.5 ? '+' : '-';
        if (op === '-' && b > a) [a, b] = [b, a];       // keep answer positive
        answer = op === '+' ? a + b : a - b;
        question = `${a} ${op} ${b}`;
        $('#capQ').textContent = `${a} ${op === '-' ? '\u2212' : '+'} ${b} = ?`;
        $('#capA').value = '';
    }
    $('#capNew').addEventListener('click', newCaptcha);
    newCaptcha();

    /* ----- messages ----- */
    const msg = $('#msg');
    function show(kind, text, contact) {
        msg.className = 'msg ' + kind;
        msg.hidden = false;
        msg.innerHTML = '';
        const p = document.createElement('p');
        p.textContent = text;
        msg.append(p);
        if (contact) {
            msg.insertAdjacentHTML('beforeend',
                `<a class="call" href="tel:+91${CONTACT}"><i class="fas fa-phone-alt"></i> Call ${CONTACT}</a>`);
        }
        msg.scrollIntoView({ behavior: 'smooth', block: 'center' });
    }
    const serverError = () => show('err', `Server error. Please contact directly on ${CONTACT}.`, true);

    /* ----- submit (AJAX) ----- */
    const btn = $('#submitBtn'), bar = $('#bar'), label = btn.querySelector('.label');

    function busy(on) {
        btn.disabled = on;
        label.innerHTML = on ? '<i class="fas fa-spinner fa-spin"></i> Sending...' : '<i class="fas fa-paper-plane"></i> Submit application';
        if (!on) bar.style.width = '0';
    }

    form.addEventListener('submit', e => {
        e.preventDefault();
        msg.hidden = true;

        if (!form.checkValidity()) return form.reportValidity();
        if (!files.photo) return show('err', 'Please add your face photo (take a photo or choose from gallery).');
        if (!files.id_proof) return show('err', 'Please add your ID proof (Aadhaar, PAN or any government ID).');
        if (parseInt($('#capA').value, 10) !== answer) {
            newCaptcha();
            return show('err', 'Wrong answer to the maths question. Please try the new one.');
        }

        const fd = new FormData(form);
        fd.append('photo', files.photo, files.photo.name);
        fd.append('id_proof', files.id_proof, files.id_proof.name);
        fd.append('captcha_question', question);
        fd.append('captcha_answer', $('#capA').value);

        const xhr = new XMLHttpRequest();
        xhr.open('POST', SUBMIT_URL);
        xhr.timeout = 90000;
        xhr.upload.onprogress = ev => { if (ev.lengthComputable) bar.style.width = (ev.loaded / ev.total * 100) + '%'; };

        xhr.onload = () => {
            busy(false);
            let data = null;
            try { data = JSON.parse(xhr.responseText); } catch (err) { /* not JSON */ }

            if (xhr.status >= 200 && xhr.status < 300 && data && data.status === 'success') {
                show('ok', data.message || 'Application sent. We will call you soon.');
                form.reset();
                files.photo = files.id_proof = null;
                render('photo'); render('id_proof');
                newCaptcha();
            } else if (data && data.message && xhr.status < 500) {
                show('err', data.message);                 // e.g. validation message from server
            } else {
                serverError();                             // 5xx, 404, bad response
            }
        };
        xhr.onerror = xhr.ontimeout = () => { busy(false); serverError(); };

        busy(true);
        xhr.send(fd);
    });
});
