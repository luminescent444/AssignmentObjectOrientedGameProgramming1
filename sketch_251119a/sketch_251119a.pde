boolean healSelect = false;
boolean attackSelect = true;
boolean attacking = true;

void setup () {
size(400,400);
background(0);
}

void draw (){
  drawBackground();
  drawButtons ();
  
  if (attacking == true) {
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
