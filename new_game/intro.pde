void intro() {

  theme.play();
  background(255);

  fill(100);
  tactile(250, 550, 200, 100);
  rect(250, 550, 200, 100, 30);
  tactile(550, 550, 200, 100);
  rect(550, 550, 200, 100, 30);

  textSize(70);
  pushMatrix();
  fill(100, 255, 0);
  filter( BLUR, 1);
  translate(-4, -4);
  text("slap that face", 400, 200);
  popMatrix();
  fill(0);
  text("slap that face", 400, 200);
  textSize(50);
  fill(255);
  text("start", 250, 540);
  text("options", 550, 540);
}

void introClicks() { 
  if (mouseX > 150 && mouseX < 350 && mouseY > 500 && mouseY < 600) {
    mode = GAME;
  }
  if (mouseX > 450 && mouseX < 650 && mouseY > 500 && mouseY < 600) {
    mode = OPTION;
  } //550, 550, 200, 100, 30
}
