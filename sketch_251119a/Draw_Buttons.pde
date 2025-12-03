
//FUNCTION TO DRAW THE BUTTONS

void drawButtons () {

  //when HEAL is selected

  if (healSelect == true) {

    //heal button

    //set stroke to green
    stroke(#46FF0A);
    //set fill to black
    fill(0);
    //draw outline
    rect (60, 340, 120, 40);
    //set fill to green
    fill(#46FF0A);
    //set text size
    textSize(30);
    //write "HEAL"
    text ("HEAL", 88, 370);

    //attack button

    //set stroke to white
    stroke(255);
    //set fill to black
    fill(0);
    //draw outline
    rect(220, 340, 120, 40);
    //set fill to white
    fill(255);
    //write "ATTACK"
    text ("ATTACK", 233, 370);
  }

  //when ATTACK is selected

  if (attackSelect == true) {

    //heal button

    //set stroke to white
    stroke(255);
    //set fill to black
    fill(0);
    //draw outline
    rect (60, 340, 120, 40);
    //set fill to white
    fill(255);
    //set text size
    textSize(30);
    //write "HEAL"
    text ("HEAL", 88, 370);

    //attack button

    //set stroke to green
    stroke(#46FF0A);
    //set fill to black
    fill(0);
    //draw outline
    rect(220, 340, 120, 40);
    //set fill to green
    fill(#46FF0A);
    //write "ATTACK"
    text ("ATTACK", 233, 370);
  }

  //when buttons are both OFF

  if (buttonsOff == true) {

    //heal button

    //set stroke to white
    stroke(255);
    //set fill to black
    fill(0);
    //draw outline
    rect (60, 340, 120, 40);
    //set fill to white
    fill(255);
    //set text size
    textSize(30);
    //write "HEAL"
    text ("HEAL", 88, 370);

    //attack button

    //set stroke to white
    stroke(255);
    //set fill to black
    fill(0);
    //draw outline
    rect(220, 340, 120, 40);
    //set fill to white
    fill(255);
    //write "ATTACK"
    text ("ATTACK", 233, 370);
  }
}
