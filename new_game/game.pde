

//


void game() {

  theme.play();
  background(0, 255, 0);

  //pause
  fill(0, 255, 0);
  stroke(0, 255, 0);
  rect(50, 50, 200, 200);

  fill(255);
  tactile(95, 100, 90, 100);
  rect(65, 100, 30, 100);
  rect(125, 100, 30, 100);

  //target
  stroke(0);
  circle(x, y, d);
  image(selectedFace,x-d/2,y-d/2,d,d);
  x = x+vx;
  y = y+vy;

  if (x < r || x > width-r) {
    vx = vx*-1;
  }

  if (y < r || y > height-r) {
    vy = vy*-1;
  }


  text("Score:" + score, 700, 140);
  text("Lives:" + lives, 700, 190);

  highscore = score;
  if (score > highscore) {
    newscore = score;
  } else {
    newscore = highscore + 0;
  }
}

void gameClicks() { 

  if (dist(mouseX, mouseY, x, y) < r) {
    score = score + 1;
    slap.rewind();
    slap.play();
    vy = vy * 1.1;
    vx = vx * 1.2;
  } else if (mouseX > 50 && mouseX < 140 && mouseY > 50 && mouseY < 150) {  //50, 50, 50, 150, 150, 100

    mode = PAUSE;
  } else {
    lives = lives - 1;
    miss.rewind();
    miss.play();
  }

  if (lives == 1) {
    theme.pause();
    heartbeat.play();
  }

  if (lives <= 0) {
    mode = GAMEOVER;
  }
}
