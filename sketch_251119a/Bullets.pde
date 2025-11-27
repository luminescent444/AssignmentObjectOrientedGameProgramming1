class TopBullet {
  
  PVector blocation = new PVector (200,160);
  PVector bvelocity = new PVector (0,1); //shoot passes it a number for x
  
  void drawBullet () {
    
    fill (255);
    noStroke();
    ellipse(blocation.x,blocation.y,5,5);
    
  }
  
  void moveBullet () {
    
    blocation.add(bvelocity);
    int x1 = round(position.x-7);
    int x2 = round(position.x+7);
    int a = round(blocation.x);
    //collision test
    if (hitCooldown == false){
    if (x1<a&& a<x2) {
      playerHP = playerHP - 10;
      hitCooldown = true;
    }
    }
  }
  
}
