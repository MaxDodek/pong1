void pause () {
  tactile(width/2, height/2, 200,100);
  fill(torquoise);
  rect(width/2, height/2, 200,100);
  fill(black);
  text("Continue", width/2, height/2);
}

void pauseClicks () {
  if (isClicking(width/2, height/2, 200, 100) == true) { //to intro
    mode=GAME;
  }
}
