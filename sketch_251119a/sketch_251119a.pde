Soul mySoul;

int floweyHP = 200;
int playerHP = 200;

boolean healSelect = false;
boolean attackSelect = true;
boolean buttonsOff = false;

boolean attacking = false;

boolean gameOn = true;
boolean introOn = false;
boolean deadOn = false;

float timerLength = 50;
float timerCount = 0;

float soulX = 195;
float soulY = 225;

void setup () {
  size(400, 400);
  background(0);
  mySoul = new Soul();
}

void draw () {
  if (gameOn == true) {
    PImage floweySprite = loadImage("floweySprite.png");
    drawBackground();
    drawButtons ();
    HPBars ();
    image(floweySprite, 150, 20, 100, 110);
    mySoul.drawSoul();
     mySoul.moveSoul();


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
    // mySoul.moveSoul();
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
