void mouseReleased() {

  if (mode == INTRO) {
    introClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks();
    theme.rewind();
  } else if (mode == OPTION) {
    optionClicks();
  }
}
