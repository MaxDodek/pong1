void game () { //ask about enforcing ball limits - ask him if I've already done that, I don't understand

  background (torquoise);

  //pause
  tactile(width/2, 100, 200, 100);
  fill(darkgreen);
  rect(width/2, 100, 200, 100);
  fill(lightgreen);
  text("Pause", width/2, 100);


  //Scoreboard
  textSize (50);

  fill(darkgreen);
  text(leftscore, width/4, 100);
  fill(black);
  text(rightscore, 3*width/4, 100);
  timer--;


  //paddles
  fill(yellow);
  stroke(yellow);
  circle(leftx, lefty, leftd);
  circle(rightx, righty, rightd);

  //move paddles ***May need to prevent paddles from going higher or lower to solve a weird problem
  if (AI ==false) {
    if (wkey==true) lefty=lefty-5;
    if (skey == true) lefty = lefty+5;
  } else {

    if (y<lefty) lefty=lefty-speed; 
    if (y>lefty) lefty=lefty+speed; 
  }

  if (upkey==true) righty=righty-5;
  if (downkey==true) righty=righty+5;


  if (lefty>=height-balld -100) {
    lefty= height-balld -100;
  }
  if (lefty<height/100+ 92+100) {
    lefty=height/100+ 92 +100;
  }

  if (righty>=height-balld-100) {
    righty= height-balld-100;
  }
  if (righty<height/100+ 92+100) {
    righty=height/100+ 92+100;
  }


  //ball
  circle(x, y, balld);


  //move ball{
  if (timer<0) {
    x=x+vx;
    y=y+vy;
    println(vx+", "+vy);
  }



  //going to  side (scoring)
  if (x<-balld/2) {// right side scores
    coin.rewind();
    coin.play();
    rightscore++; //these do the same thing.rightscore =rightscore+1
    x=width/2;
    y=height/2;
    timer=100;
    vx=random(-4, -2);
    vy=random(-4, 4);
  }

  if (x>width+balld/2) { //left side scores
    coin.rewind();
    coin.play();
    leftscore++; //these do the same thing.rightscore =rightscore+1
    x=width/2;
    y=height/2;
    timer=100;
    vx=random(2, 4);
    vy=random(-4, 4);
  }
  //println(x<balld/2);

  //bouncing

  //bounce aggainst top or bottum
  if (y<balld/2||y>height-balld/2) {// top or bottom
    vy*=-1;
    bounce.rewind();
    bounce.play();
  }
  //bounce against paddles
  if (dist(leftx, lefty, x, y) <= balld/2 + leftd/2) {
    vx=(x - leftx)/10;
    vy =(y - lefty)/10;
    bounce.rewind();
    bounce.play();
  }
  if (dist(rightx, righty, x, y) <= balld/2 + rightd/2) {
    vx=(x - rightx)/10;
    vy =(y - righty)/10;
    bounce.rewind();
    bounce.play();
  }

  if (leftscore==3) {
    mode=GAMEOVER;
    coin.pause();
    gameover.rewind();
    gameover.play();
  }
  if (rightscore==3) {
    mode=GAMEOVER;
    coin.pause();
    gameover.rewind();
    gameover.play();
  }
}




void gameClicks () {
  if (isClicking(width/2, 100, 200, 100) == true) mode=PAUSE;  //to Pause game
}
