 // Show notice between this time range
        const noticeStart = new Date("2026-01-21T23:40:15"); // START
        const noticeEnd   = new Date("2026-01-21T23:52:55"); // END

        // Auto close after (milliseconds)
        const autoCloseAfter = 2 * 60 * 1000; // 2 minutes

        // Notice content
        const noticeData = {
          title: "🎉 Special Offer!",
          message: `
            On the occasion of the New Year,
            <strong>Asha Grill House</strong> is offering
            special discounts on Iron Gates & Grill Work.
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

