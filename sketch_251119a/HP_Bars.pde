
//FUNCTION TO DRAW HEALTH BARS

void HPBars () {

  //player health bar

  //turn off stroke
  noStroke();
  //set fill to grey
  fill(#A2A2A2);
  //draw background rectangle
  rect(100, 300, 200, 20);
  //set color to green
  fill(#46FF0A);
  //draw HP meter
  rect(100, 300, playerHP, 20);

  //flowey health bar

  //turn off stroke
  noStroke();
  //set color to grey
  fill(#A2A2A2);
  //draw background rectangle
  rect(100, 140, 200, 20);
  //set color to green
  fill(#46FF0A);
  //draw HP meter
  rect(100, 140, floweyHP, 20);
}

//FUNCTION TO CHECK IF EITHER CHARACTER IS BELOW 0 HP

void HPCheck() {

  //if the player's HP is less than 1
  if (playerHP < 1) {
    //turn on death screen
    deadOn = true;
    //turn off the attacking phase
    attacking = false;
    //turn off the game
    gameOn = false;
  }

  //if flowey's HP is less than 1
  if (floweyHP < 1) {
    //turn on the win screen
    winOn = true;
    //turn off the attacking phase
    attacking = false;
    //turn off the game
    gameOn = false;
  }
}
