
//FUNCTION TO CONTROL DEATH SCREEN

void deathScreen () {

  //draw the background

  //set the fill to grey
  fill (50);
  //draw a new rectangle for the background
  rect (0, 0, 400, 400);

  //writing text

  //set the fill to white
  fill(255);
  //set the text size
  textSize(60);
  //write "GAME OVER"
  text("GAME OVER", 50, 150);
  //make the text smaller
  textSize(30);
  //write "PRESS SPACE TO RETRY"
  text("PRESS SPACE TO RETRY", 50, 250);

  //button press controls

  //if the space key is pressed
  if (keyPressed) {
    if (key == ' ') {

      //turn off the death screen
      deadOn = false;
      //turn on the game
      gameOn = true;
      //reset both HP bars to max
      floweyHP = 200;
      playerHP = 200;
    }
  }
}

//FUNCTION TO CONTROL INTRO SCREEN

void introScreen () {

  //draw the background

  //set fill to grey
  fill (50);
  //draw a new rectangle for the background
  rect (0, 0, 400, 400);

  //write text

  //set fill to white
  fill(255);
  //set text size
  textSize(30);
  //write out description of controls
  text("ARROW KEYS - Move soul\nENTER - Select\n\n S - Start", 50, 150);

  //button press controls

  //if the s key is pressed
  if (keyPressed) {
    if (key == 's') {

      //turn off the intro screen
      introOn = false;
      //turn on the game
      gameOn = true;

      //reset both HP bars to max
      floweyHP = 200;
      playerHP = 200;
    }
  }
}

//FUNCTION TO CONTROL WIN SCREEN

void winScreen () {

  //draw the background

  //set fill to grey
  fill (50);
  //draw a new rectangle for the background
  rect (0, 0, 400, 400);

  //writing text

  //set fill to white
  fill(255);
  //set text size
  textSize(60);
  //write "YOU HAVE WON!"
  text("YOU HAVE \nWON!", 50, 130);
  //make text smaller
  textSize(30);
  //write "PRESS SPACE TO RETRY"
  text("PRESS SPACE TO RETRY", 50, 290);

  //button press controls

  //if the space key is pressed
  if (keyPressed) {
    if (key == ' ') {

      //turn off the win screen
      winOn = false;
      //turn on the game
      gameOn = true;

      //reset both HP bars to max
      floweyHP = 200;
      playerHP = 200;
    }
  }
}
