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

  for (int i = 0; i < 4; i++) {
    topBullets[i] = new TopBullet(bXValues[i], bYValues[i]);
  }
  for (int i = 0; i < 4; i++) {
    int val =4;
    leftBullets[i] = new LeftBullet(bXValues[val], bYValues[val]);
    val = val+1;
  }

  //printArray(topBullets);
  //printArray(leftBullets);
}

int shoot () {

  int bulletNum = round(random (0, 7));
  
  //update bulletnum tracker array
  for (int i = 13; i>0; i--){
    bulletNums[i]=bulletNums[i-1];
  }
    bulletNums[0]=bulletNum;

  
  printArray(bulletNums);
  println(bulletNum);
  fill(255);
  
  if (bulletNum < 4) {
    //myTopBullet = new TopBullet(bXValues[bulletNum],bYValues[bulletNum]); 
    topBullets[bulletNum].drawBullet();
    rect(200,200,20,20);
  }else if (4<bulletNum && bulletNum < 8) {
    //myLeftBullet = new LeftBullet(bXValues[bulletNum],bYValues[bulletNum]);
    leftBullets[bulletNum-4].drawBullet();
    rect(300,300,20,20);
  }
  
  //for (int i=0; i<13; i++){
  //topBullets[bulletNums[i]].drawBullet();
  //topBullets[bulletNums[i]].moveBullet();
  //}
  
  return bulletNum;
}
