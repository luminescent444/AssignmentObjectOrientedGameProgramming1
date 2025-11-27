Soul mySoul;
TopBullet myTopBullet;

int floweyHP = 1;
int playerHP = 1;

boolean healSelect = false;
boolean attackSelect = true;
boolean buttonsOff = false;

boolean attacking = false;
boolean hitCooldown = false;

boolean gameOn = false;
boolean introOn = true;
boolean deadOn = false;
boolean winOn = false;

float timerLength = 50;
float timerCount = 0;
      float timerL = 20;
      float timerC = 0;


float soulX = 195;
float soulY = 225;

PVector position = new PVector(195, 225);
PVector velocity = new PVector(0, 0);

void setup () {
  size(400, 400);
  mySoul = new Soul();
  myTopBullet = new TopBullet();
}

void draw () {
  background(0);
  HPCheck();

  if (deadOn == true) {
    deathScreen();
  }

  if (winOn == true) {
    winScreen();
  }

  if (introOn == true) {
    introScreen();
  }

  if (gameOn == true) {
    background(0);
    PImage floweySprite = loadImage("floweySprite.png");
    drawBackground();
    drawButtons ();
    HPBars ();
    image(floweySprite, 150, 20, 100, 110);
    mySoul.drawSoul();
    //myTopBullet.drawBullet();
    //myTopBullet.moveBullet();

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
          myTopBullet.drawBullet();
    myTopBullet.moveBullet();

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

    if (hitCooldown == true) {
      println(timerC);

      timerC = timerC+1;

      if (timerC>timerL) {
        hitCooldown = false;
        timerC=0;
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
