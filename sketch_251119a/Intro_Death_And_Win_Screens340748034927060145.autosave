void deathScreen () {
  
  //bg
  fill (50);
  rect (0,0,400,400);
  
  //text
  fill(255);
  textSize(60);
  text("GAME OVER",50,150);
  
  textSize(30);
  text("PRESS SPACE TO RETRY", 50,250);
  
  //button press
  if (keyPressed) {
    if (key == ' ') {

      deadOn = false;
      gameOn = true;
      floweyHP = 200;
      playerHP = 200;      
    }
  }
}

void introScreen () {
  
  //bg
  fill (50);
  rect (0,0,400,400);
  
  //text
  fill(255);
  textSize(60);
  //text("GAME OVER",50,150);
  
  textSize(30);
  text("ARROW KEYS - Move soul\nENTER - Select\n\n S - Start", 50,150);
  
  //button press
  if (keyPressed) {
    if (key == 's') {

      introOn = false;
      gameOn = true;
      floweyHP = 200;
      playerHP = 200;      
    }
  }
}

void winScreen () {
  
  //bg
  fill (50);
  rect (0,0,400,400);
  
  //text
  fill(255);
  textSize(60);
  text("YOU HAVE \nWON!",50,130);
  
  textSize(30);
  text("PRESS SPACE TO RETRY", 50,290);
  
  //button press
  if (keyPressed) {
    if (key == ' ') {

      winOn = false;
      gameOn = true;
      floweyHP = 200;
      playerHP = 200;      
    }
  }
}
