
//BULLET OBJECT

class Bullet {

  //initialize pvectors for location, velocity, and acceleration
  PVector blocation;
  PVector bvelocity;
  PVector bacceleration;

  //receive location and velocity from the shoot function
  Bullet (float x, float y, float vx, float vy) {

    //declare the location, velocity and acceleration as the correct values depending on which start location was picked
    blocation = new PVector (x, y);
    bvelocity = new PVector (vx, vy);
    bacceleration = new PVector (0.2 * vx, 0.2 * vy);
  }

  //FUNCTION TO DRAW THE BULLET

  void drawBullet () {

    //set the color to white
    fill (255);
    //remove the stroke
    noStroke();
    //draw a 5 x 5 ellipse at the correct location
    ellipse(blocation.x, blocation.y, 5, 5);
  }

  //FUNCTION TO MOVE THE BULLET

  void moveBullet () {

    //add acceleration to velocity
    bvelocity.add(bacceleration);
    //add velocity to location
    blocation.add(bvelocity);

    // COLLISIONS

    //initialize variables to hold the complete soul dimensions
    int x1 = round(position.x);
    int x2 = round(position.x+15);
    int y1 = round(position.y);
    int y2 = round(position.y+15);

    //test to see if a collision is happening

    //if the hit cooldown is off
    if (hitCooldown == false) {
      //if a bullet is within the soul's dimensions
      if (x1<blocation.x && blocation.x<x2 && y1<blocation.y && blocation.y < y2) {
        //remove HP from the player
        playerHP = playerHP - 20;
        //turn on the hit cooldown
        hitCooldown = true;
      }
    }
  }
}
