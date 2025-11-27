void deathScreen () {
  
  //bg
  fill (50);
  rect (0,0,400,400);
  
  //text
  fill(255);
  textSize(60);
  text("GAME OVER",50,150);
  
  textSize(30);
  text("PRESS ENTER TO RETRY", 50,250);
  
  /*if (keyPressed) {
    if (key == ENTER) {

      deadOn = false;
      
    }
  }*/
}
