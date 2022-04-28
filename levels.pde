void levels() {
  background(lightgreen);
  intro.play();

  //Title
  textSize(100);
  fill(darkgreen);
  text ("Chose Level:", width/2, height/3.5);

  tactile(width/2, height/2, 200, 100);
  fill(darkgreen);
  rect(width/2, height/2, 200, 100);
  fill(lightgreen);
  textSize(35);
  text("Level 1", width/2, height/2);

  tactile(width/2, height/1.5, 200, 100);
  fill(darkgreen);
  rect(width/2, height/1.5, 200, 100);
  fill(lightgreen);
  textSize(35);
  text("Level 2", width/2, height/1.5);

  tactile(width/2, height/1.2, 200, 100);
  fill(darkgreen);
  rect(width/2, height/1.2, 200, 100);
  fill(lightgreen);
  textSize(35);
  text("Level 3", width/2, height/1.2);
}

void levelClicks() {
  if (isClicking(width/2, height/2, 200, 100) == true) { //to start game
    mode=GAME;
    speed=5;
    AI =true;
    intro.pause();
  }

  if (isClicking(width/2, height/1.5, 200, 100) == true) { //to start game
    mode=GAME;
    speed=7;
    AI =true;
    intro.pause();
  }

  if (isClicking(width/2, height/1.2, 200, 100) == true) { //to start game
    mode=GAME;
    speed=9;
    AI =true;
    intro.pause();
  }
}
