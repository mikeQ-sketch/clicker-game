void pause() {
  theme.pause();
  heartbeat.play();
  
  stroke(0,255,0);
  fill(0,255,0);
  rect(95, 100, 100, 100);
  
  tactile(95, 100, 100, 100);
  fill(255);
  triangle(50, 50, 50, 150, 140, 100);

}

void pauseClicks() {
  if (mouseX > 50 && mouseX < 140 && mouseY > 50 && mouseY < 150) {
    mode = GAME;
  }
}
