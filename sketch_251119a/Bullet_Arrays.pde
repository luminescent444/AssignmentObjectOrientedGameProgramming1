void populateBLocations () {

  //top x
  bXValues [0] = 160;
  bXValues [1] = 185;
  bXValues [2] = 215;
  bXValues [3] = 240;

  //left x
  bXValues [4] = 130;
  bXValues [5] = 130;
  bXValues [6] = 130;

  //right x
  bXValues [7] = 270;
  bXValues [8] = 270;
  bXValues [9] = 270;
  bXValues [10] = 270;

  //bottom x
  bXValues [11] = 170;
  bXValues [12] = 200;
  bXValues [13] = 230;


  //top y
  bYValues [0] = 160;
  bYValues [1] = 160;
  bYValues [2] = 160;
  bYValues [3] = 160;

  //left y
  bYValues [4] = 200;
  bYValues [5] = 230;
  bYValues [6] = 260;

  //right y
  bYValues [7] = 190;
  bYValues [8] = 215;
  bYValues [9] = 235;
  bYValues [10] = 270;

  //bottom y
  bYValues [11] = 300;
  bYValues [12] = 300;
  bYValues [13] = 300;
  
  //top velocity x
  velocityX [0] = 0;
  velocityX [1] = 0;
  velocityX [2] = 0;
  velocityX [3] = 0;
  
  //left velocity x
  velocityX [4] = 3;
  velocityX [5] = 3;
  velocityX [6] = 3;
  
  //right velocity x
  velocityX [7] = -3;
  velocityX [8] = -3;
  velocityX [9] = -3;
  velocityX [10] = -3;
  
  //bottom velocity x
  velocityX [11] = 0;
  velocityX [12] = 0;
  velocityX [13] = 0;
  
  //top velocity y
  velocityY [0] = 3;
  velocityY [1] = 3;
  velocityY [2] = 3;
  velocityY [3] = 3;
  
  //left velocity y
  velocityY [4] = 0;
  velocityY [5] = 0;
  velocityY [6] = 0;
 
  //right velocity y
  velocityY [7] = 0;
  velocityY [8] = 0;
  velocityY [9] = 0;
  velocityY [10] = 0;
  
  //bottom velocity y
  velocityY [11] = -3;
  velocityY [12] = -3;
  velocityY [13] = -3;

  for (int i = 0; i < 14; i++) {
    Bullets[i] = new Bullet(bXValues[i], bYValues[i], velocityX[i],velocityY[i]);
  }
}

void shoot () {

  int bulletNum = round(random (0, 13));

  //update bulletnum tracker array
  for (int i = 13; i>0; i--) {
    bulletNums[i]=bulletNums[i-1];
  }
  bulletNums[0]=bulletNum;

}

void updateBullets(){

//moving around ALL bullets
  for (int i=0; i<13; i++) {
      Bullets[bulletNums[i]].moveBullet();
      Bullets[bulletNums[i]].drawBullet();
  }

}
