void HPBars () {
  
  //player health bar
  noStroke();
  fill(#A2A2A2);
  rect(100,300,200,20);
  fill(#46FF0A);
  rect(100,300,playerHP,20);
  
  //flowey health bar
  noStroke();
  fill(#A2A2A2);
  rect(100,140,200,20);
  fill(#46FF0A);
  rect(100,140,floweyHP,20);
}

void HPCheck() {
  if (playerHP < 1) {
    deadOn = true;
    gameOn = false;
  }
  
  if (floweyHP < 1) {
    winOn = true;
    gameOn = false;
  }
  
}
