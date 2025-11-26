int floweyHP = 190;
int playerHP = 190;

boolean healSelect = false;
boolean attackSelect = true;
boolean buttonsOff = false;

boolean attacking = false;

boolean gameOn = true;
boolean introOn = false;
boolean deadOn = false;

float timerLength = 50;
float timerCount = 0;

void setup () {
  size(400, 400);
  background(0);
}

void draw () {
  if (gameOn == true) {

    PImage floweySprite = loadImage("floweySprite.png");
    image(floweySprite, 150, 20, 100, 110);
    drawBackground();
    drawButtons ();
    HPBars ();


    if (attacking == false) {
      buttonsOff = false;
      buttonCheck();

      if (keyCode == LEFT) {
        healSelect = true;
        attackSelect = false;
      }
      if (keyCode == RIGHT) {
        attackSelect = true;
        healSelect = false;
      }
    }

    if (attacking == true) {
      //call shooting
      timerCount = timerCount + 1;
      //rect(100, 100, 200, 200);
      buttonsOff = true;
      if (timerCount > timerLength) {
        timerCount = 0;
        attacking = false;
      }
    }
  }
}
