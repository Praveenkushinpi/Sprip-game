let score = 0; 
let gameTime = 10; 
let gameRunning = false; 
function startGame() {
  score = 0; 
  gameRunning = true; 
  document.getElementById("startButton").style.display = "none"; 
  setTimeout(endGame, gameTime * 1000);
  updateDisplay();
}
function handleTap() {
  if (gameRunning) {
    score++; 
    updateDisplay(); 
  }
}