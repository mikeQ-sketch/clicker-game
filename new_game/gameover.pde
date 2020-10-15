void gameover() {

  theme.pause();
  background(255, 0, 0);
  fill(255);
  tactile(250, 550, 200, 100);
  rect(250, 550, 200, 100, 30);
  fill(0);
  text("restart", 245, 540);

  tactile(550, 550, 200, 100);
  fill(255);
  rect(550, 550, 200, 100, 30);
  fill(0);
  text("quit", 550, 540);

  text("GAME OVER", 400, 200);
  text("High Score:" + newscore, 400, 400);
}

void gameoverClicks() {
  if (mouseX > 150 && mouseX < 350 && mouseY > 500 && mouseY < 600) {
    mode = INTRO; 
    reset();
  } 
  if (mouseX > 450 && mouseX < 650 && mouseY > 500 && mouseY < 600) {
    exit();
  }
}
