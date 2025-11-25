int floweyHP = 190;
int playerHP = 190;
boolean healSelect = false;
boolean attackSelect = true;
boolean attacking = true;

void setup () {
size(400,400);
background(0);
}

void draw (){
  
  if (attacking == true) {
    
      drawBackground();
      drawButtons ();
      HPBars ();
    
    if (keyCode == LEFT) {
      healSelect = true;
      attackSelect = false;
    }
    if (keyCode == RIGHT) {
      attackSelect = true;
      healSelect = false;
    }
  }
}
