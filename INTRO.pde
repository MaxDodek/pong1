void intro () {
  background(lightgreen);
  intro.play();

  //title
  fill(darkgreen);
  rect(width/2, height/5, width/2, height/8);
  fill(lightgreen);
  textSize(100);
  textFont(bigRoboto);
  text("PONG", width/2, height/4.3);
  textFont(Roboto);







  //1 Player
  tactile(width/1.4, height/1.5, width/5, height/10);
  fill(darkgreen);
  rect(width/1.4, height/1.5, width/5, height/10);
  fill(lightgreen);
  textSize(35);
  text("1 Player", width/1.4, height/1.5);
  strokeWeight(0);
  stroke(lightgreen);

  //2 Player
  tactile(width/3.5, height/1.5, width/5, height/10);
  fill(darkgreen);
  rect(width/3.5, height/1.5, width/5, height/10);
  fill(lightgreen);
  textSize(35);
  text("2 Player", width/3.5, height/1.5);
  strokeWeight(0);
  stroke(lightgreen);
}

void introClicks () {

  //1 Player
  if (isClicking(width/1.4, height/1.5, width/5, height/10) == true) { //to start game
    mode=LEVELS;
  }

  //2 Players
  if (isClicking(width/3.5, height/1.5, width/5, height/10) == true) { //to start game
    mode=GAME;
    AI=false;
    intro.pause();
  }
}

void tactile(float x, float y, float w, float h) {
  if (mouseX > x - w/2 && mouseX< x + w/2 && mouseY> y - h/2 && mouseY<y+h/2) {
    stroke (black);
    strokeWeight(1);
  } else {
    stroke(black);
    strokeWeight(3.5);
  }
}
