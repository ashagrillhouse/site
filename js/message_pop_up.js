 // Show notice between this time range
        const noticeStart = new Date("2026-01-23T00:00:00"); // START
        const noticeEnd   = new Date("2026-01-23T23:59:59"); // END

        // Auto close after (milliseconds)
        const autoCloseAfter = 2 * 60 * 1000; // 2 minutes

        // Notice content
        const noticeData = {
          title: "🎉 Special Day!",
          message: `
            On the occasion of the Basanth Panchami and Netaji's Birthday,
            <strong>Asha Grill House</strong> is wishing you
            very wonderful, joyful and a proud day.
            <br><br>
            📞 Contact us today to know more!
          `
        };


        function showNotice() {
          document.getElementById("noticeTitle").innerHTML = noticeData.title;
          document.getElementById("noticeMessage").innerHTML = noticeData.message;
          document.getElementById("noticeTime").textContent =
            "Valid till: " + noticeEnd.toLocaleString();

          document.getElementById("noticeOverlay").style.display = "flex";

          // Auto close
          setTimeout(closeNotice, autoCloseAfter);
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
            showNotice();
            clearInterval(noticeChecker); // stop checking once shown
          }
        }, 1000);

