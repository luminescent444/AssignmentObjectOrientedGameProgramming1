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

PVector position = new PVector(195, 225);
PVector velocity = new PVector(0, 0);

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
    
    println(velocity.x,velocity.y,position.x,position.y);
    mySoul.drawSoul();

//home phase button configs
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

//attacking phase settings
    if (attacking == true) {
      position.add(velocity);
      //call shooting
      timerCount = timerCount + 1;
      //rect(100, 100, 200, 200);
      buttonsOff = true;
      if (timerCount > timerLength) {
        timerCount = 0;
        attacking = false;
        position.x = 195;
        position.y = 225;
      }
    }
  }
}

void keyPressed() {
  if (keyCode == LEFT) {
    velocity.x = velocity.x - 2;
  }
  if (keyCode == RIGHT) {
    velocity.x = velocity.x + 2;
  }
  if (keyCode == UP) {
    velocity.y = velocity.y - 2;
  }
  if (keyCode == DOWN) {
    velocity.y = velocity.y + 2;
  }
  velocity.x = constrain(velocity.x, -2, 2);
  velocity.y = constrain(velocity.y, -2, 2);
}

void keyReleased() {
  if (keyCode == UP) {
    velocity.y = velocity.y + 2;
  }
  if (keyCode == DOWN) {
    velocity.y = velocity.y - 2;
  }
  if (keyCode == LEFT) {
    velocity.x = velocity.x + 2;
  }
  if (keyCode == RIGHT) {
    velocity.x = velocity.x - 2;
  }
  velocity.x = constrain(velocity.x, -2, 2);
  velocity.y = constrain(velocity.y, -2, 2);
}
