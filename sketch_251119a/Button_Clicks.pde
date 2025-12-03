
//FUNCTION FOR BUTTON CLICK SENSORS FOR NON-ATTACK PHASE

void buttonCheck () {

  //if the enter key is pressed
  if (keyPressed) {
    if (key == ENTER) {
      //if the heal button is highlighted
      if (healSelect == true) {
        //call the heal function
        healPress();
        //if the attack button is highlighted
      } else if (attackSelect == true) {
        //call the attack function
        attackPress();
      }
    }
  }
}

//FUNCTION FOR WHEN ATTACK IS CLICKED

void attackPress () {

  //remove some HP from flowey
  floweyHP = floweyHP - 20;
  //reset all of the bullets' locations
  populateBLocations();
  //reset the bulletNums array to be empty
  for (int i = 13; i>0; i--) {
    bulletNums[i]=0;
  }
  //start the attack phase
  attacking = true;
}

//FUNCTION FOR WHEN HEAL IS CLICKED

void healPress () {

  //if the player is under the max HP, add some HP to the player
  if (playerHP <200) {
    playerHP = playerHP + 40;
  }
  //reset all of the bullets' locations
  populateBLocations();
  //reset the bulletNums array to be empty

  for (int i = 13; i>0; i--) {
    bulletNums[i]=0;
  }
  //start the attack phase
  attacking = true;
}
