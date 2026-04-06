
/* =======================
 *   CONFIG
 * ======================= */
const CHAT_KEY = "site_chat_history";
const MAX_CHAT_MESSAGES = 100;

/* =======================
 *   ELEMENTS
 * ======================= */
const overlay = document.getElementById("blurOverlay");
const chatBtn   = document.getElementById("chatButton"); //Hello tis is for identyfy the id element fo rthis tags
const chatBox   = document.getElementById("chatBox");    // this the for tags for the the gaing the void main joginff
const closeChat = document.getElementById("closeChat");
const sendBtn   = document.getElementById("sendBtn");
const chatInput = document.getElementById("chatInput");
const chatBody  = document.getElementById("chatBody");
const typing    = document.getElementById("typing");


/* =======================
 *   OPEN / CLOSE
 * ======================= */
chatBtn.onclick = () => {
    playSound('sounds/click.mp3');
    overlay.classList.add("active");
    chatBox.style.display = "flex";
    loadChatHistory();
    chatBody.innerHTML="<p class='default_chat_msg'>🔒Messages are end-to-end encrypted. Only people in theis chat can read, listen to, or share them. <a href='./encryption.html'>Learn more</a>.<p>"+chatBody.innerHTML;

    typeMessage(messageText, "typedMessage", 60);
};

closeChat.onclick = () => {
    playSound('sounds/click.mp3');
    chatBox.style.display = "none";
    overlay.classList.remove("active");
};

/* =======================
 *   SEND EVENTS
 * ======================= */
sendBtn.onclick = sendMessage;

chatInput.addEventListener("keypress", e => {
    if (e.key === "Enter") sendMessage();
});


function playSound(fileName) {
    const audio = new Audio(fileName);
    audio.volume = 1.0; // full volume (max = 1)
    audio.loop = false;  // optional: keep playing
    audio.play().catch(err => {
        console.log("Autoplay blocked:", err);
    });
}




/* =======================
 *   SEND MESSAGE
 * ======================= */
function sendMessage() {
    const text = chatInput.value.trim();
    if (!text) return;
    playSound("sounds/send.mp3");
    addMessage(text, "user");
    saveMessage(text, "user");

    chatInput.value = "";

    typing.style.display = "block";

    setTimeout(() => {
        typing.style.display = "none";
        botReply(text.toLowerCase());
        playSound("sounds/receive.mp3");
    }, 1200);
}

/* =======================
 *   ADD MESSAGE TO UI
 * ======================= */
function addMessage(text, type, time = getTime(), date = getDate()) {
    const row = document.createElement("div");
    row.className = "msg-row " + type;

    const bubble = document.createElement("div");
    bubble.className = "chat-msg " + type;
    bubble.textContent = text;

    const meta = document.createElement("div");
    meta.className = "msg-time";
    meta.textContent = `${time}`;

    row.appendChild(bubble);
    row.appendChild(meta);
    chatBody.appendChild(row);

    chatBody.scrollTop = chatBody.scrollHeight;
}

/* =======================
 *   BOT REPLY
 * ======================= */
function botReply(text) {
    const userText = text.toLowerCase().trim();

    let reply = "Thank you for contacting Asha Grill House! 👷‍♂️ How can I help you today?";

    // ====================== GREETINGS ======================
    if (userText.match(/\b(hi|hello|hey|namaste|namaskar|good morning|good afternoon|good evening)\b/)) {
        reply = "Hello! 👋 Welcome to Asha Grill House! How can I help you today?";
    }

    // ====================== OWNER ======================
    else if (userText.includes("owner") || userText.includes("founder") || userText.includes("biggyan") || userText.includes("das")) {
        reply = "Our founder and master craftsman is Mr. Biggyan Das. With over 15 years of experience, he started Asha Grill House in 2015 with a commitment to quality and honesty.";
    }

    // ====================== TIMING ======================
    else if (userText.includes("open") || userText.includes("close") || userText.includes("timing") || userText.includes("time") || userText.includes("hour")) {
        reply = "We are open every day from 9:00 AM to 10:00 PM ⏰\nNo weekly off.";
    }

    // ====================== LOCATION & SERVICE AREA ======================
    else if (userText.includes("address") || userText.includes("location") || userText.includes("where") || userText.includes("area") || userText.includes("serve") || userText.includes("delivery")) {
        reply = "📍 Asha Grill House\nPost Office Daspara, Muragachha, Nadia, West Bengal\n\nWe provide services and delivery within 40-50 km radius, covering:\nMuragachha, Sadhanpara, Dharmada, Dhumuliya, Gaccha, Bethuya, Kamarhati, and nearby villages.\n\nWe also serve distant areas like Krishnanagar, Berhampore, Palashi, and beyond.";
    }

    // ====================== TRANSPORT & DELIVERY ======================
    else if (userText.includes("transport") || userText.includes("delivery") || userText.includes("send") || userText.includes("carry") || userText.includes("40 km") || userText.includes("50 km")) {
        reply = "Yes, we have our own transport arrangement. We can deliver finished products to any area within 40-50 km radius from Muragachha. For farther distances, we can arrange delivery as well.";
    }

    // ====================== CONTACT ======================
    else if (userText.includes("phone") || userText.includes("number") || userText.includes("contact") || userText.includes("call") || userText.includes("whatsapp")) {
        reply = "You can call or WhatsApp us at:\n📲 +91 9932134803\n\nFeel free to contact us anytime for quotations or orders.";
    }

    // ====================== SERVICES / WORK ======================
    else if (userText.includes("service") || userText.includes("work") || userText.includes("make") || userText.includes("product") || userText.includes("grill") || userText.includes("gate") || userText.includes("railing")) {
        reply = "We specialize in high-quality iron, steel, and casting work. Our main services include:\n• Iron Grills & Windows\n• Boundary Gates, Tin Gates & Collapsible Gates\n• Doors, Shutters & Railings\n• Steel & Iron Staircases\n• Tin Shades & Glass Panels\n• Wood-fitted Grills\n• Custom fabrication as per your design\n\nAll work is done with premium materials and expert craftsmanship.";
    }

    // ====================== TIN SHADE / TIN WORK ======================
    else if (userText.includes("tin") || userText.includes("shade") || userText.includes("roof")) {
        reply = "Yes, we also take orders for Tin Shades (Tin Roof). We make high-quality tin shades with proper structure and fitting. You can share your requirements.";
    }

    // ====================== CASTING ======================
    else if (userText.includes("casting") || userText.includes("cast iron")) {
        reply = "We also do casting work along with steel and iron fabrication. For more details about casting, please contact the owner directly.";
    }

    // ====================== EXPERIENCE ======================
    else if (userText.includes("experience") || userText.includes("since") || userText.includes("year") || userText.includes("old")) {
        reply = "Asha Grill House has been serving with honesty and quality since 2015 (more than 10 years of trusted service).";
    }

    // ====================== PRICE ======================
    else if (userText.includes("price") || userText.includes("cost") || userText.includes("rate") || userText.includes("charge") || userText.includes("how much")) {
        reply = "Our pricing is reasonable and depends on design, size, and materials. We offer fair rates with good quality.\n\nFor accurate quotation, please tell me what you need (gate size, grill design, tin shade, etc.), or contact us directly.";
    }

    // ====================== CUSTOM DESIGN ======================
    else if (userText.includes("custom") || userText.includes("design") || userText.includes("according")) {
        reply = "Yes, we accept **custom designs**. You can send your own design, photo, or idea. We will craft it with high quality as per your requirement.";
    }

    // ====================== MATERIAL & QUALITY ======================
    else if (userText.includes("material") || userText.includes("quality") || userText.includes("steel") || userText.includes("iron")) {
        reply = "We use premium quality iron, steel, and other materials. All products are made for long-lasting durability and beautiful finishing.";
    }

    // ====================== THANK YOU & GOODBYE ======================
    else if (userText.includes("thank") || userText.includes("thanks")) {
        reply = "You're most welcome! 😊 Is there anything else I can help you with?";
    }
    else if (userText.includes("bye") || userText.includes("goodbye")) {
        reply = "Thank you for contacting Asha Grill House! Have a great day! 👋";
    }

    // Default Smart Reply
    else {
        reply = "Thank you for reaching out to Asha Grill House! 👷‍♂️\n\nI can help you with:\n• Services (Grills, Gates, Railings, Tin Shades, etc.)\n• Pricing & Quotations\n• Delivery & Transport (up to 40-50 km)\n• Location & Contact\n• Custom Designs\n\nPlease tell me what you need?";
    }

    addMessage(reply, "bot");
    saveMessage(reply, "bot");
}


/* =======================
 *   STORAGE SAVE (WITH LIMIT)
 * ======================= */
function saveMessage(text, type) {
    let history = JSON.parse(localStorage.getItem(CHAT_KEY)) || [];

    history.push({
        text,
        type,
        time: getTime(),
                 date: getDate()
    });

    // LIMIT CONTROL (FIFO)
    if (history.length > MAX_CHAT_MESSAGES) {
        history = history.slice(history.length - MAX_CHAT_MESSAGES);
    }

    localStorage.setItem(CHAT_KEY, JSON.stringify(history));
}

/* =======================
 *   LOAD CHAT HISTORY
 * ======================= */
function loadChatHistory() {
    chatBody.innerHTML = "";

    const history = JSON.parse(localStorage.getItem(CHAT_KEY)) || [];

    history.forEach(msg => {
        addMessage(msg.text, msg.type, msg.time, msg.date);
    });
}

/* =======================
 *   TIME & DATE
 * ======================= */
function getTime() {
    const now = new Date();
    return now.toLocaleTimeString([], {
        hour: "2-digit",
        minute: "2-digit"
    });
}

function getDate() {
    const now = new Date();
    return now.toLocaleDateString();
}




const messageText = "Ask your questions in the chatbox. We’ll do our best to help you. If you still need assistance, feel free to contact us directly.";

function typeMessage(text, targetId, speed = 45) {
    const el = document.getElementById(targetId);
    if (!el) return;

    el.style.color = "#fff";
    el.style.whiteSpace = "pre-wrap";
    el.textContent = "";

    let i = 0;

    function writeChar() {
        if (i < text.length) {
            el.textContent += text.charAt(i);
            i++;
            setTimeout(writeChar, speed);
        }
    }

    writeChar();
}

