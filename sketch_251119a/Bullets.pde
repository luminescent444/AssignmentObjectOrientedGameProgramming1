class TopBullet {

  PVector blocation;
  PVector bvelocity;

TopBullet (float x, float y) {
  
  blocation = new PVector (x, y);
  bvelocity = new PVector (0, 1);
}

  void drawBullet () {

    fill (255);
    noStroke();
    ellipse(blocation.x, blocation.y, 5, 5);
  }

  void moveBullet () {

    blocation.add(bvelocity);
    
    //soul dimensions
    int x1 = round(position.x-7);
    int x2 = round(position.x+7);
    int y1 = round(position.y-7);
    int y2 = round(position.y+7);
    
    //collision test
    if (hitCooldown == false) {
      if (x1<blocation.x && blocation.x<x2 && y1<blocation.y && blocation.y < y2) {
        playerHP = playerHP - 10;
        hitCooldown = true;
      }
    }
  }
}

class LeftBullet {

  PVector blocation;
  PVector bvelocity;

LeftBullet (float x, float y) {
  
  blocation = new PVector (x, y);
  bvelocity = new PVector (0, 1);
}

  void drawBullet () {

    fill (200,200,200);
    noStroke();
    ellipse(blocation.x, blocation.y, 5, 5);
  }

  void moveBullet () {

    blocation.add(bvelocity);
    
    //soul dimensions
    int x1 = round(position.x-7);
    int x2 = round(position.x+7);
    int y1 = round(position.y-7);
    int y2 = round(position.y+7);
    
    //collision test
    if (hitCooldown == false) {
      if (x1<blocation.x && blocation.x<x2 && y1<blocation.y && blocation.y < y2) {
        playerHP = playerHP - 10;
        hitCooldown = true;
      }
    }
  }
}

class RightBullet {

  PVector blocation;
  PVector bvelocity;

RightBullet (float x, float y) {
  
  blocation = new PVector (x, y);
  bvelocity = new PVector (0, -1);
}

  void drawBullet () {

    fill (200,200,200);
    noStroke();
    ellipse(blocation.x, blocation.y, 5, 5);
  }

  void moveBullet () {

    blocation.add(bvelocity);
    
    //soul dimensions
    int x1 = round(position.x-7);
    int x2 = round(position.x+7);
    int y1 = round(position.y-7);
    int y2 = round(position.y+7);
    
    //collision test
    if (hitCooldown == false) {
      if (x1<blocation.x && blocation.x<x2 && y1<blocation.y && blocation.y < y2) {
        playerHP = playerHP - 10;
        hitCooldown = true;
      }
    }
  }
}

class BottomBullet {

  PVector blocation;
  PVector bvelocity;

BottomBullet (float x, float y) {
  
  blocation = new PVector (x, y);
  bvelocity = new PVector (-1, 0);
}

  void drawBullet () {

    fill (200,200,200);
    noStroke();
    ellipse(blocation.x, blocation.y, 5, 5);
  }

  void moveBullet () {

    blocation.add(bvelocity);
    
    //soul dimensions
    int x1 = round(position.x-7);
    int x2 = round(position.x+7);
    int y1 = round(position.y-7);
    int y2 = round(position.y+7);
    
    //collision test
    if (hitCooldown == false) {
      if (x1<blocation.x && blocation.x<x2 && y1<blocation.y && blocation.y < y2) {
        playerHP = playerHP - 10;
        hitCooldown = true;
      }
    }
  }
}
