function toggle(button) {
  let offno = -1;
  // Initial click makes clicked ON and others OFF
  const buttons = document.getElementsByClassName("button");
  if (document.getElementById(button.id).value == "INITIAL") {
    for (let i = 0; i < buttons.length; i++) {
      document.getElementById(buttons[i].id).value = "OFF";
      document.getElementById(button.id).classList.remove("active");
      document.getElementById(button.id).classList.remove("hover");
    }
    document.getElementById(button.id).value = "ON";
    document.getElementById(button.id).classList.add("active");
  }
  // Non-initial clicks make clicked OFF -> ON and ON -> OFF
  else if (document.getElementById(button.id).value == "OFF") {
    document.getElementById(button.id).value = "ON";
    document.getElementById(button.id).classList.add("active");
  }
  else {
    document.getElementById(button.id).value = "OFF";
    document.getElementById(button.id).classList.remove("active");
    document.getElementById(button.id).classList.remove("hover");
    // Make all OFF -> ON
    offno = 0;
    for (let i = 0; i < buttons.length; i++) {
      if (document.getElementById(buttons[i].id).value != "OFF") {
        offno++;
      }
    }
    if (offno == 0) {
      for (let i = 0; i < buttons.length; i++) {
        document.getElementById(buttons[i].id).value = "ON";
      }
    }
  }
  // The item is visible if at least one related button is clicked
  let item = event.target.getAttribute('item');
  const papers = document.getElementsByClassName(item);
  for (let i = 0; i < papers.length; i++) {
    papers[i].style.display = "none";
    for (let j = 0; j < buttons.length; j++) {
      if (document.getElementById(buttons[j].id).value == "ON") {
        if (Array.from(papers[i].classList).includes(buttons[j].id)) {
          papers[i].style.display = "list-item";
          break;
        }
      }
    }
  }
  // If all OFF, return to INITIAL
  if (offno == 0) {
    for (let i = 0; i < buttons.length; i++) {
      document.getElementById(buttons[i].id).value = "INITIAL";
    }
  }
}