const plainText = document.getElementById("plainText");
const encryptedText = document.getElementById("encryptedText");
const decryptedText = document.getElementById("decryptedText");
const runDemo = document.getElementById("runDemo");
const themeToggle = document.getElementById("themeToggle");
const langSelect = document.getElementById("lang");

let aesKey, iv;

/* ---------------- ENCRYPTION ---------------- */

async function generateAES() {
  aesKey = await crypto.subtle.generateKey(
    { name: "AES-GCM", length: 256 },
    true,
    ["encrypt", "decrypt"]
  );
  iv = crypto.getRandomValues(new Uint8Array(12));
}

async function encryptMessage(text) {
  const encoded = new TextEncoder().encode(text);
  const cipher = await crypto.subtle.encrypt(
    { name: "AES-GCM", iv },
    aesKey,
    encoded
  );
  return btoa(String.fromCharCode(...new Uint8Array(cipher)));
}

async function decryptMessage(base64) {
  const data = Uint8Array.from(atob(base64), c => c.charCodeAt(0));
  const plain = await crypto.subtle.decrypt(
    { name: "AES-GCM", iv },
    aesKey,
    data
  );
  return new TextDecoder().decode(plain);
}

/* ---------------- DEMO ---------------- */

runDemo.onclick = async () => {
  encryptedText.textContent = "Encrypting...";
  decryptedText.textContent = "...";

  await generateAES();
  const encrypted = await encryptMessage(plainText.value);
  encryptedText.textContent = encrypted;

  setTimeout(async () => {
    const decrypted = await decryptMessage(encrypted);
    decryptedText.textContent = decrypted;
  }, 1200);
};

/* ---------------- THEME ---------------- */

themeToggle.onclick = () => {
  document.body.classList.toggle("light");
};

/* ---------------- LANGUAGE ---------------- */

const translations = {
  en: {
    title: "End-to-End Encryption Demo",
    plain: "Plain Message",
    encrypted: "Encrypted Data",
    decrypted: "Decrypted Message",
    image: "Image Encryption Visualization"
  },
  bn: {
    title: "এন্ড-টু-এন্ড এনক্রিপশন ডেমো",
    plain: "সাধারণ বার্তা",
    encrypted: "এনক্রিপ্টেড ডেটা",
    decrypted: "ডিক্রিপ্টেড বার্তা",
    image: "ছবি এনক্রিপশন ভিজুয়াল"
  },
  hi: {
    title: "एंड-टू-एंड एन्क्रिप्शन डेमो",
    plain: "साधारण संदेश",
    encrypted: "एन्क्रिप्टेड डेटा",
    decrypted: "डिक्रिप्टेड संदेश",
    image: "इमेज एन्क्रिप्शन दृश्य"
  }
};

langSelect.onchange = () => {
  const t = translations[langSelect.value];
  document.getElementById("title").textContent = t.title;
  document.getElementById("plainTitle").textContent = t.plain;
  document.getElementById("encryptedTitle").textContent = t.encrypted;
  document.getElementById("decryptedTitle").textContent = t.decrypted;
  document.getElementById("imageTitle").textContent = t.image;
};

/* ---------------- PDF GUIDE ---------------- */

document.getElementById("downloadPDF").onclick = () => {
  const { jsPDF } = window.jspdf;
  const pdf = new jsPDF();

  pdf.text("End-to-End Encryption Guide", 10, 10);
  pdf.text(
`This demo explains how modern apps use encryption.

1. AES encrypts messages
2. RSA exchanges keys securely
3. Server cannot read messages
4. Only sender & receiver can decrypt`,
    10,
    20
  );

  pdf.save("encryption-guide.pdf");
};
