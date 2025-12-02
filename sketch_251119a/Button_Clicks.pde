void buttonCheck () {
  if (keyPressed) {
    if (key == ENTER) {

      if (healSelect == true) {
        healPress();
      } else if (attackSelect == true) {
        attackPress();
      }
    }
  }
}


void attackPress () {

  floweyHP = floweyHP - 20;
  populateBLocations();
  for (int i = 13; i>0; i--) {
    bulletNums[i]=0;
  }
  attacking = true;
}

void healPress () {

  if (playerHP <200) {
    playerHP = playerHP + 40;
  }
  populateBLocations();
  for (int i = 13; i>0; i--) {
    bulletNums[i]=0;
  }
  attacking = true;
}
