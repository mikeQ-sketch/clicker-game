void option() {

  background(255);
  stroke(0);
  strokeWeight(5);
  tactile(200, 200, 100, 100);
  imagebutton(face1, 200, 200, 100, 100, 150, 150); 
  tactile(400, 200, 100, 100);
  imagebutton(face2, 400, 200, 100, 100, 350, 150);
  tactile(600, 200, 100, 100);
  imagebutton(face3, 600, 200, 100, 100, 550, 150);

  stroke(255);
  square(400, 500, 200);
  strokeWeight(3);
  stroke(0);

  circle(600, 500, size);
  image(selectedFace,600-size/2, 500-size/2, size, size);

  strokeWeight(3);
  slider();

  fill(200);
  tactile(200, 550, 200, 100);
  rect(200, 550, 200, 100);
  fill(0);
  text("OK", 200, 550);
}

void optionClicks() {
  face();

  if (mouseX > 100 && mouseX < 300 && mouseY > 500 && mouseY < 600) {
    mode = INTRO;
  }
}


void slider() {
  strokeWeight(5);
  line(500, 400, 500, 600);
  fill(100);
  circle(500, h, 50);
}

void mouseDragged() {
  if (mouseX > 475 && mouseX < 525 && mouseY > 400 && mouseY < 600) {
    h = mouseY;
    size = map(h, 400, 600, 50, 100);
  }
}



void face() {
  
  if (mouseX > 150 && mouseX < 250 && mouseY > 150 && mouseY < 250) {
    selectedFace = face1;
    
  } 
  if (mouseX > 350 && mouseX < 450 && mouseY > 150 && mouseY < 250) {
    selectedFace = face2;
   
  } 
  if (mouseX > 550 && mouseX < 650 && mouseY > 150 && mouseY < 250) {
    selectedFace = face3;
  }
}
