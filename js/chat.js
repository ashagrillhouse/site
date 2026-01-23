
/* =======================
 *   CONFIG
 * ======================= */
const CHAT_KEY = "site_chat_history";
const MAX_CHAT_MESSAGES = 100;

/* =======================
 *   ELEMENTS
 * ======================= */
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
    chatBox.style.display = "flex";
    loadChatHistory();
    chatBody.innerHTML="<p class='default_chat_msg'>🔒Messages are end-to-end encrypted. Only people in theis chat can read, listen to, or share them. <a href='../encryption.html'>Learn more</a>.<p>"+chatBody.innerHTML;
};

closeChat.onclick = () => {
    chatBox.style.display = "none";
};

/* =======================
 *   SEND EVENTS
 * ======================= */
sendBtn.onclick = sendMessage;

chatInput.addEventListener("keypress", e => {
    if (e.key === "Enter") sendMessage();
});

/* =======================
 *   SEND MESSAGE
 * ======================= */
function sendMessage() {
    const text = chatInput.value.trim();
    if (!text) return;

    addMessage(text, "user");
    saveMessage(text, "user");

    chatInput.value = "";

    typing.style.display = "block";

    setTimeout(() => {
        typing.style.display = "none";
        botReply(text.toLowerCase());
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
    let reply = "Sorry, I didn’t understand that.";

    if (text.includes("hi") || text.includes("hello")) {
        reply = "Hello 👋 How can we help you?";
    }
    else if (text.includes("price") || text.includes("cost")) {
        reply = "Prices depend on design & size. Please contact us 📞";
    }
    else if (text.includes("location") || text.includes("address")) {
        reply = "We are located in West Bengal 📍";
    }
    else if (text.includes("time") || text.includes("open")) {
        reply = "We are open daily from 9 AM to 10 PM ⏰";
    }
    else if (text.includes("contact") || text.includes("phone")) {
        reply = "Call or WhatsApp: +91 9932134803 📲";
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
