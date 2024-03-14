/**
 * 
 */
document.getElementById("callButton").addEventListener("click", function() {
    window.location.href = "tel:717-557-5051"; 
});
 
 function highlightStars(star) {
            var stars = document.getElementsByClassName('stars')[0].getElementsByTagName('label');
            for (var i = 0; i < stars.length; i++) {
                if (i <= star) {
                    stars[i].style.color = '#ffcc00'; // Highlight stars up to the selected star
                } else {
                    stars[i].style.color = '#ccc'; // Reset color of stars after the selected star
                }
            }
        }