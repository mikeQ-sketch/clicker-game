void tactile(int x, int y, int w, int h) {
  if (mouseX > x-w/2 && mouseX <x+w/2 && mouseY > y-h/2 && mouseY < y+h/2) {
    stroke(0,0,255);
    strokeWeight(5);
  } else {
    stroke(0);
    strokeWeight(3);
  }
}

void imagebutton(PImage pic, int x, int y, int w, int h, int a, int b) {
  fill(255);
  rect(x,y,w,h);
  image(pic, a, b, 100, 100);
}


void reset() {
  x = width/2;
  y = height/2;
  d = 100;
  r = d/2;
  vx = random(-3, 3);
  vy = random(-3, 3);

  score = 0;
  lives = 3;
}
