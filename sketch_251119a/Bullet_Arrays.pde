
//FUNCTION TO POPULATE BULLET LOCATION/VELOCITY ARRAYS

void populateBLocations () {

  //top x values
  bXValues [0] = 160;
  bXValues [1] = 185;
  bXValues [2] = 215;
  bXValues [3] = 240;

  //left x values
  bXValues [4] = 130;
  bXValues [5] = 130;
  bXValues [6] = 130;

  //right x values
  bXValues [7] = 270;
  bXValues [8] = 270;
  bXValues [9] = 270;
  bXValues [10] = 270;

  //bottom x values
  bXValues [11] = 170;
  bXValues [12] = 200;
  bXValues [13] = 230;


  //top y values
  bYValues [0] = 160;
  bYValues [1] = 160;
  bYValues [2] = 160;
  bYValues [3] = 160;

  //left y values
  bYValues [4] = 200;
  bYValues [5] = 230;
  bYValues [6] = 260;

  //right y values
  bYValues [7] = 190;
  bYValues [8] = 215;
  bYValues [9] = 235;
  bYValues [10] = 270;

  //bottom y values
  bYValues [11] = 300;
  bYValues [12] = 300;
  bYValues [13] = 300;

  //top velocity x values
  velocityX [0] = 0;
  velocityX [1] = 0;
  velocityX [2] = 0;
  velocityX [3] = 0;

  //left velocity x values
  velocityX [4] = 3;
  velocityX [5] = 3;
  velocityX [6] = 3;

  //right velocity x values
  velocityX [7] = -3;
  velocityX [8] = -3;
  velocityX [9] = -3;
  velocityX [10] = -3;

  //bottom velocity x values
  velocityX [11] = 0;
  velocityX [12] = 0;
  velocityX [13] = 0;

  //top velocity y values
  velocityY [0] = 3;
  velocityY [1] = 3;
  velocityY [2] = 3;
  velocityY [3] = 3;

  //left velocity y values
  velocityY [4] = 0;
  velocityY [5] = 0;
  velocityY [6] = 0;

  //right velocity y values
  velocityY [7] = 0;
  velocityY [8] = 0;
  velocityY [9] = 0;
  velocityY [10] = 0;

  //bottom velocity y values
  velocityY [11] = -3;
  velocityY [12] = -3;
  velocityY [13] = -3;

  //fill each slot in bullet array with bullet objects
  for (int i = 0; i < 14; i++) {
    Bullets[i] = new Bullet(bXValues[i], bYValues[i], velocityX[i], velocityY[i]);
  }
}

//FUNCTION TO CALL EACH TIME A BULLET MUST SPAWN

void shoot () {

  //pick a random bullet from the list of possible bullet starting positions
  int bulletNum = round(random (0, 13));

  //store the previous numbers of the bullets that have been called
  for (int i = 13; i>0; i--) {
    //move all values back by one
    bulletNums[i]=bulletNums[i-1];
  }
  //set the current bullet number to the first slot in the array
  bulletNums[0]=bulletNum;
}

//FUNCTION TO UPDATE AND MOVE THE ARRAYS

void updateBullets() {

  //move and draw every bullet stored in the bulletNums array
  for (int i=0; i<13; i++) {
    Bullets[bulletNums[i]].moveBullet();
    Bullets[bulletNums[i]].drawBullet();
  }
}
