// DECLARE GLOBAL VARIABLES AND ARRAYS

//declare object variable to hold the soul

Soul mySoul;

//declare HP values

int floweyHP = 1;
int playerHP = 1;

//declare button click settings (press heal, press attack, turn off both buttons while attacking)

boolean healSelect = false;
boolean attackSelect = true;
boolean buttonsOff = false;

//attacking settings (hit cooldown controller and attacking phase controller)

boolean attacking = false;
boolean hitCooldown = false;

//game state settings (game screen, game over screen, intro screen, and win screen)

boolean gameOn = false;
boolean introOn = true;
boolean deadOn = false;
boolean winOn = false;

//timer controllers

//attacking phase timer
float atkTimerLength = 100;
float atkTimerCount = 0;
//hit cooldown timer
float cooldownTimerL = 20;
float cooldownTimerC = 0;
//shooting control timer
float shootTimerCount = 0;
float shootTimerLength = 15;

//bullet arrays

//bullet starting locations
float [] bXValues = new float[14];
float [] bYValues = new float[14];
//bullet velocities
float [] velocityX = new float[14];
float [] velocityY = new float[14];
//bullet object array
Bullet [] Bullets = new Bullet[14];
//array for tracking bullet number positions
int [] bulletNums = new int [14];

//soul pvectors

PVector position = new PVector(195, 225);
PVector velocity = new PVector(0, 0);


void setup () {
  size(400, 400);

  //declare soul variable
  mySoul = new Soul();
}

void draw () {
  background(0);

  //check if both HP bars are over 0
  HPCheck();

  //constrain the position of the soul to within the box
  position.x = constrain(position.x, 140, 245);
  position.y = constrain(position.y, 170, 275);

  //CALL DEATH SCREEN

  if (deadOn == true) {
    deathScreen();
  }

  //CALL WIN SCREEN

  if (winOn == true) {
    winScreen();
  }

  //CALL INTRO SCREEN

  if (introOn == true) {
    introScreen();
  }

  //FUNCTIONS FOR WHEN THE GAME IS ON

  if (gameOn == true) {

    //draw background visuals

    //draw background
    background(0);
    //set flowey sprite variable
    PImage floweySprite = loadImage("floweySprite.png");
    //draw the background details
    drawBackground();
    //draw the buttons
    drawButtons ();
    //draw the HP bars
    HPBars ();
    //draw flowey sprite variable
    image(floweySprite, 150, 20, 100, 110);
    //draw the soul
    mySoul.drawSoul();

    //SELECTING PHASE SETTINGS AND FUNCTIONS

    if (attacking == false) {
      //turn on the buttons
      buttonsOff = false;
      //perform the heal or attack function depending on the button selected
      buttonCheck();

      //check which button is selected

      //heal button is selected
      if (keyCode == LEFT) {
        healSelect = true;
        attackSelect = false;
      }
      //attack button is selected
      if (keyCode == RIGHT) {
        attackSelect = true;
        healSelect = false;
      }
    }

    //ATTACKING PHASE SEETINGS AND FUNCTIONS

    if (attacking == true) {

      //allow soul to move
      position.add(velocity);
      //turn off buttons
      buttonsOff = true;
      //move the bullets around the screen
      updateBullets();

      //SHOOTING TIMER

      //every 15 milliseconds shoot a bullet
      shootTimerCount = shootTimerCount + 1;
      if (shootTimerCount > shootTimerLength) {
        shootTimerCount = 0;
        shoot();
      }

      //ATTACKING TIMER

      //let the attacking phase last for 100 milliseconds, then turn off attacking and reset the soul position
      atkTimerCount = atkTimerCount + 1;
      if (atkTimerCount > atkTimerLength) {
        atkTimerCount = 0;
        attacking = false;
        position.x = 195;
        position.y = 225;
      }
    }

    //COOLDOWN TIMER

    //track a hit cooldown boolean that turns itself off after 20 milliseconds
    if (hitCooldown == true) {
      cooldownTimerC = cooldownTimerC+1;

      if (cooldownTimerC>cooldownTimerL) {
        hitCooldown = false;
        cooldownTimerC=0;
      }
    }
  }
}

//MOVEMENT CONTROLS FOR THE SOUL (referenced Kit Barry's WHICH ONE)

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
