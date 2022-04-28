void gameover() {
  background(torquoise);
  if (leftscore<rightscore) {
    textSize(50);
    fill(yellow);
    text("Right Side Wins", width/2, height/2);
  } else {
    textSize(50);
    fill(yellow);
    text("Left Side Wins", width/2, height/2);
  }
  fill(yellow);
  tactile(width/2, height/1.5, 200, 100);
  rect(width/2, height/1.5, 200, 100);
  fill(torquoise);
  textSize(35);
  text("End Game", width/2, height/1.5);
}

void gameoverClicks () {
  if (isClicking(width/2, height/1.5, 200, 100) == true) { //to intro
    mode=INTRO;
    gameover.pause();
    leftscore=0;
    rightscore=0;
    
  }
}
