cart = document.getElementById("cart")
cart.innerHTML = "<%= j render(@cart) %>"
cart.style.display = "block"

notice = document.getElementById("notice")
if notice
  notice.style.display = "none"