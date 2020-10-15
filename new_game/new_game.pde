//library ==============================
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


//modes ===============================
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
final int OPTION = 4;

//target ==============================
float x, y, d, r;
float vx, vy;
int score, lives; 

//music ===============================
Minim minim;
AudioPlayer click, miss, heartbeat, theme, slap;

//color ==========================
color glow = #EFF262;

//image ==============
PImage face1, face2, face3;

//other ==================
int highscore, newscore;
float h, size;

//int face_1, face_2, face_3;
PImage selectedFace;

void setup() {  
  size(800, 700);
  mode = INTRO;

  rectMode(CENTER);
  textAlign(CENTER, CENTER);

  x = width/2;
  y = height/2;
  d = 100;
  r = d/2;
  vx = random(-3, 3);
  vy = random(-3, 3);
  
  score = 0;
  lives = 3;
  
  highscore = 0;
  newscore = highscore;
  h = 400;
  size = 50;

  //minim
  minim = new Minim(this);
  theme = minim.loadFile("theme.mp3");
  click = minim.loadFile("hit.wav");
  miss = minim.loadFile("miss.mp3");
  heartbeat = minim.loadFile("heartbeat.mp3");
  slap = minim.loadFile("slap.mp3");
  
  
  //meme face
  face1 = loadImage("face1.png");
  face2 = loadImage("face_rage.png");
  face3 = loadImage("face3.png");
  
  //face_1 = 0;
  //face_2 = 0;
  //face_3 = 0;
  
  selectedFace = face1;
}

void draw() {

  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == OPTION) {
    option();
  } else {
    println("Error: Mode = " + mode);
  }
}
