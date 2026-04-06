 // Show notice between this time range
        const noticeStart = new Date("2026-04-15T00:00:00"); // START
        const noticeEnd   = new Date("2026-04-22T23:59:59"); // END

        // Auto close after (milliseconds)
        const autoCloseAfter = 2 * 60 * 1000; // 2 minutes

        const noticeData = {
          title: "🌼✨ শুভ নববর্ষ ✨🌼",
          message: `
          <div style="font-size:18px; font-weight:600; color:#d35400; text-align:center; margin-bottom:8px;">
          শুভ নববর্ষ ১৪৩৩
          </div>

          <strong style="color:#000;">Asha Grill House</strong> এর পক্ষ থেকে আপনাদের জানাই আন্তরিক শুভেচ্ছা।<br><br>

          নতুন বছরের প্রতিটি দিন হোক সুখ, শান্তি ও সমৃদ্ধিতে ভরপুর।
          নতুন আশা ও স্বপ্ন নিয়ে শুরু হোক আপনাদের সুন্দর পথচলা।<br><br>

          <span id='for_contact'>📞 যোগাযোগ করুন আমাদের সাথে।</span>
          `
        };

        function showNotice() {

          document.getElementById("noticeTitle").innerHTML = noticeData.title;
          document.getElementById("noticeMessage").innerHTML = noticeData.message;
          document.getElementById("noticeTime").textContent =
            "Valid till: " + noticeEnd.toLocaleString();

          document.getElementById("noticeOverlay").style.display = "flex";
          document.getElementById("noticeMessage").style.color = "#222";
          document.getElementById("noticeTitle").style.color = "#d35400";
          document.getElementById("noticeMessage").style.fontWeight = "500";
          document.getElementById("noticeMessage").style.lineHeight = "1.6";


          const card = document.querySelector(".notice-box");

          card.style.backgroundImage =
          "linear-gradient(rgba(255,255,255,0.85), rgba(255,255,255,0.9)), url('images/nobo_borso.png')";

          card.style.backgroundSize = "contain";   // 🔥 key change
          card.style.backgroundPosition = "center";
          card.style.backgroundRepeat = "no-repeat";
          card.style.backgroundSize = "55%";


          // Auto close
          setTimeout(closeNotice, autoCloseAfter);

          // ✅ NOW element exists
          const gContact = document.getElementById("for_contact");

          if (gContact) {
            gContact.style.cursor = "pointer";

            gContact.addEventListener('click', () => {
              closeNotice();

              setTimeout(() => {
                document.getElementById("contact")?.scrollIntoView({
                  behavior: "smooth"
                });
              }, 100);
            });
          }
        }


        function closeNotice() {
          document.getElementById("noticeOverlay").style.display = "none";
        }

        // Check time
        // Check time continuously (every 1 second)
        const noticeChecker = setInterval(() => {
          const now = new Date();
          //console.log(now);
          if (now >= noticeStart && now <= noticeEnd) {
            //console.log("in if");
            showNotice();
            buildFlowerMala();
            clearInterval(noticeChecker); // stop checking once shown
          }

        }, 1000);





/* /////// FLOWER MALA ADD //////////////////////////*/

        function addFlower(parent, x, y, emoji, rotate = 0) {
          const span = document.createElement("span");
          span.className = "flower";
          span.textContent = emoji;
          span.style.left = x + "px";
          span.style.top = y + "px";
          span.style.transform = `translate(-50%, -50%) rotate(${rotate}deg)`;
          parent.appendChild(span);
        }

        function buildFlowerMala() {
          const mala = document.getElementById("emojiMala");
          if (!mala) return;

          mala.innerHTML = "";

          const w = window.innerWidth;
          const segments = 5;                 // 4-5 half circles
          const segW = w / segments;
          const sag = Math.min(42, Math.max(26, w * 0.03));
          const top = 10;

          for (let s = 0; s < segments; s++) {
            const xStart = s * segW;
            const flowers = Math.max(12, Math.floor(segW / 16));

            for (let i = 0; i < flowers; i++) {
              if (s < segments - 1 && i === flowers - 1) continue; // avoid overlap at joints

              const t = i / (flowers - 1);     // 0 to 1
              const u = 2 * t - 1;             // -1 to 1

              // half-circle curve
              const x = xStart + segW * t;
              const y = top + sag * Math.sqrt(Math.max(0, 1 - u * u));

              const emoji = (i % 2 === 0) ? "🌼" : "🌸";
              addFlower(mala, x, y, emoji, u * 10);
            }
          }

          // left side hanging chain
          for (let i = 0; i < 4; i++) {
            addFlower(mala, 10 + i * 2, 16 + i * 18, i % 2 === 0 ? "🌼" : "🌸", -10);
          }

          // right side hanging chain
          for (let i = 0; i < 4; i++) {
            addFlower(mala, w - 10 - i * 2, 16 + i * 18, i % 2 === 0 ? "🌸" : "🌼", 10);
          }
        }

        // window.addEventListener("load", buildFlowerMala);
        // window.addEventListener("resize", buildFlowerMala);
