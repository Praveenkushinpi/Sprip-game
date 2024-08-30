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
function handleTap() {
  if (gameRunning) {
    score++; 
    updateDisplay(); 
  }
}
function updateDisplay() {
  document.getElementById("scoreDisplay").innerText = "Taps: " + score;
}

function endGame() {
  gameRunning = false;  
  alert("Time's up! You scored " + score + " taps!"); 
  document.getElementById("startButton").style.display = "block"; 
}
document.body.innerHTML = `
  <div id="gameArea">
    <h1>Tap Per Second Game</h1>
    <button id="startButton" onclick="startGame()">Start Game</button>
    <div id="scoreDisplay">Taps: 0</div>
    <div id="tapArea" onclick="handleTap()" style="width: 300px; height: 300px; border: 1px solid black; cursor: pointer;"></div>
  </div>
`;
updateDisplay();