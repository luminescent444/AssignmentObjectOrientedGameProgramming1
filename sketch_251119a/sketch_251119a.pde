int floweyHP = 190;
int playerHP = 190;

boolean healSelect = false;
boolean attackSelect = true;
boolean attacking = true;

boolean gameOn = true;
boolean introOn = false;
boolean deadOn = false;

void setup () {
  size(400, 400);
  background(0);
}

void draw () {
  if (gameOn == true) {

    PImage floweySprite = loadImage("floweySprite.png");
    image(floweySprite,150,20,100,110);
    drawBackground();
    drawButtons ();
    HPBars ();
    

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
}
