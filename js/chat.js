

const chatBtn = document.getElementById("chatButton");
const chatBox = document.getElementById("chatBox");
const closeChat = document.getElementById("closeChat");
const sendBtn = document.getElementById("sendBtn");
const chatInput = document.getElementById("chatInput");
const chatBody = document.getElementById("chatBody");
const typing = document.getElementById("typing");

chatBtn.onclick = () => chatBox.style.display = "flex";
closeChat.onclick = () => chatBox.style.display = "none";

sendBtn.onclick = sendMessage;
chatInput.addEventListener("keypress", e => {
    if (e.key === "Enter") sendMessage();
});

function sendMessage() {
    const msg = chatInput.value.trim();
    if (!msg) return;

    addMessage(msg, "user");
    chatInput.value = "";

    typing.style.display = "block";

    setTimeout(() => {
        typing.style.display = "none";
        botReply(msg.toLowerCase());
    }, 1200);
}

function addMessage(text, type) {
    const row = document.createElement("div");
    row.className = "msg-row " + type;

    const msg = document.createElement("div");
    msg.className = "chat-msg " + type;
    msg.textContent = text;

    const time = document.createElement("div");
    time.className = "msg-time";
    time.textContent = getTime();

    row.appendChild(msg);
    row.appendChild(time);
    chatBody.appendChild(row);

    chatBody.scrollTop = chatBody.scrollHeight;
}


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
    else if (text.includes("contact")) {
        reply = "Call or WhatsApp: +91 9932134803 📲";
    }

    addMessage(reply, "bot");
}

function getTime() {
    const now = new Date();
    return now.toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' });
}
