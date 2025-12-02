Soul mySoul;

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

float atkTimerLength = 100;
float atkTimerCount = 0;
float cooldownTimerL = 20;
float cooldownTimerC = 0;
float shootTimerCount = 0;
float shootTimerLength = 15;


float soulX = 195;
float soulY = 225;

float [] bXValues = new float[14];
float [] bYValues = new float[14];
float [] velocityX = new float[14];
float [] velocityY = new float[14];
Bullet [] Bullets = new Bullet[14];
int [] bulletNums = new int [14];

//soul pvectors
PVector position = new PVector(195, 225);
PVector velocity = new PVector(0, 0);


void setup () {
  size(400, 400);
  mySoul = new Soul();

  populateBLocations();
  
}

void draw () {
  background(0);
  HPCheck();
  position.x = constrain(position.x, 140, 245);
  position.y = constrain(position.y, 170, 275);

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

      position.add(velocity);
      buttonsOff = true;
      updateBullets();

      //shoot timer
      shootTimerCount = shootTimerCount + 1;
      if (shootTimerCount > shootTimerLength) {
        shootTimerCount = 0;
        shoot();
      }

      //attacking timer
      atkTimerCount = atkTimerCount + 1;
      if (atkTimerCount > atkTimerLength) {
        atkTimerCount = 0;
        attacking = false;
        position.x = 195;
        position.y = 225;
      }
    }

    //cooldown timer
    if (hitCooldown == true) {
      cooldownTimerC = cooldownTimerC+1;

      if (cooldownTimerC>cooldownTimerL) {
        hitCooldown = false;
        cooldownTimerC=0;
      }
    }
  }
}

void keyPressed() {
  if (keyCode == LEFT) {
    velocity.x = velocity.x - 4;
  }
  if (keyCode == RIGHT) {
    velocity.x = velocity.x + 4;
  }
  if (keyCode == UP) {
    velocity.y = velocity.y - 4;
  }
  if (keyCode == DOWN) {
    velocity.y = velocity.y + 4;
  }
  velocity.x = constrain(velocity.x, -4, 4);
  velocity.y = constrain(velocity.y, -4, 4);
}

void keyReleased() {
  if (keyCode == UP) {
    velocity.y = velocity.y + 4;
  }
  if (keyCode == DOWN) {
    velocity.y = velocity.y - 4;
  }
  if (keyCode == LEFT) {
    velocity.x = velocity.x + 4;
  }
  if (keyCode == RIGHT) {
    velocity.x = velocity.x - 4;
  }
  velocity.x = constrain(velocity.x, -4, 4);
  velocity.y = constrain(velocity.y, -4, 4);
}
