void drawButtons () {

  if (healSelect == true) {
    //heal button
    stroke(#46FF0A);
    fill(0);
    rect (60, 340, 120, 40);
    fill(#46FF0A);
    textSize(30);
    text ("HEAL", 88, 370);

    //attack button
    stroke(255);
    fill(0);
    rect(220, 340, 120, 40);
    fill(255);
    text ("ATTACK", 233, 370);
  }
  
if (attackSelect == true) {
    //heal button
    stroke(255);
    fill(0);
    rect (60, 340, 120, 40);
    fill(255);
    textSize(30);
    text ("HEAL", 88, 370);

    //attack button
    stroke(#46FF0A);
    fill(0);
    rect(220, 340, 120, 40);
    fill(#46FF0A);
    text ("ATTACK", 233, 370);
  }
}
