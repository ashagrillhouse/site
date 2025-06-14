// function add_operation(cont_id,img_id,url,operation)
// {
//     if(operation=='show')
//     {
//         if(cont_id && img_id && url)
//         {
//             alert(1);
//             const el = document.getElementById(cont_id);
//             if (el) el.style.display = 'block';
//             const img = document.getElementById(img_id);
//             img.src = url;
//         }
//     }
//     else
//     {
//         if(cont_id && img_id)
//         {
//             alert(2);
//             const el = document.getElementById(cont_id);
//             el.style.display = 'none';
//             const img = document.getElementById(img_id);
//             img.removeAttribute('src');
//         }
//     }
// }

// add_operation("adFooter","add3","","hide")

function _popupAdd() 
{
  const popup = document.getElementById('adPopup');
  if(popup)
    {
        const closeBtn = document.getElementById('closePopup');
        let popupTimer;

        // Show the popup and clean up
        function showPopup() {
            cleanupListeners();
            popup.style.display = 'flex';
        }

        // Remove all interaction listeners and clear timer
        function cleanupListeners() {
            window.removeEventListener('click',  startTimer);
            window.removeEventListener('touchstart', startTimer);
            window.removeEventListener('mousemove',   startTimer);
            window.removeEventListener('scroll',      startTimer);
            clearTimeout(popupTimer);
        }

        // On first user interaction, start a 5s timer to show the popup
        function startTimer() {
            cleanupListeners();              // only fire once
            popupTimer = setTimeout(showPopup, 5000);
        }

        // Hook up the close button
        closeBtn.addEventListener('click', () => {
            popup.style.display = 'none';
            clearTimeout(popupTimer);
        });

        // Wait until DOM is ready, then listen for the first interaction
        document.addEventListener('DOMContentLoaded', () => {
            window.addEventListener('click',       startTimer, { once: true });
            window.addEventListener('touchstart',  startTimer, { once: true });
            window.addEventListener('mousemove',   startTimer, { once: true });
            window.addEventListener('scroll',      startTimer, { once: true });
        });
    }
}






function add_operation(cont_id, img_id, url, operation) 
{
  // Get references up front
  const el  = document.getElementById(cont_id);
  if (el)
  {
    const img = document.getElementById(img_id);

    if (operation) 
    {
        // Only proceed if both container and image exist, and we have a URL
        if (el && img) 
        {
            el.style.display = operation+" !important;";
            if(url)
            {
                img.src = url;
            }
            else
            {
                img.removeAttribute('src');
            }
        } 
    } 
  }
}

add_operation("add_container1", "add1", "", "none"); //normal add collage
add_operation("add_container1", "add2", "", "none"); //normal add collage

add_operation("adFooter", "add3", "", "none");//flex //just above footer add long wide image add

add_operation("add_container2", "add4", "", "none");//side pannel bottom add
add_operation("adPopup", "add5", "", "none"); //flex //center screen gallery add
//_popupAdd();

