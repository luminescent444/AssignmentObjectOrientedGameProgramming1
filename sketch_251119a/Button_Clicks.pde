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

  floweyHP = floweyHP - 10;
  attacking = true;
}

void healPress () {

  if (playerHP <200) {
    playerHP = playerHP + 20;
  }
  attacking = true;
}
