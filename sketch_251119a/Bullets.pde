class Bullet {

  PVector blocation;
  PVector bvelocity;
  PVector bacceleration;

Bullet (float x, float y, float vx, float vy) {
  
  blocation = new PVector (x, y);
  bvelocity = new PVector (vx, vy);
  bacceleration = new PVector (0.2 * vx,0.2 * vy);
}

  void drawBullet () {

    fill (255);
    noStroke();
    ellipse(blocation.x, blocation.y, 5, 5);
  }

  void moveBullet () {

    bvelocity.add(bacceleration);
    blocation.add(bvelocity);
    
    //soul dimensions
    int x1 = round(position.x-7);
    int x2 = round(position.x+7);
    int y1 = round(position.y-7);
    int y2 = round(position.y+7);
    
    //collision test
    if (hitCooldown == false) {
      if (x1<blocation.x && blocation.x<x2 && y1<blocation.y && blocation.y < y2) {
        playerHP = playerHP - 20;
        hitCooldown = true;
      }
    }
  }
}
