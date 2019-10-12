function shakeEightBall() {
  var eightBallMessages = ["Nope.", "Absolutely not.", "It's a no from me.", "Ummmmmm no.", "Yup", "Absolutely", "For sure.", "Yea, but only if you finish your homework.", "Try again in a few years.", "I doubt it."];
  var randomMessageIndex = Math.floor((Math.random() * 9) + 1);
  document.getElementById("eightballOutcome").innerText = eightBallMessages[randomMessageIndex];
}
