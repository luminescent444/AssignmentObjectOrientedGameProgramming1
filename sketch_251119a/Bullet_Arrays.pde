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
  for (int i = 0; i < 3; i++) {
    int val =4;
    leftBullets[i] = new LeftBullet(bXValues[val], bYValues[val]);
    val = val+1;
  }
  for (int i = 0; i < 4; i++) {
    int val =7;
    rightBullets[i] = new RightBullet(bXValues[val], bYValues[val]);
    val = val+1;
  }
  
  for (int i = 0; i < 3; i++) {
    int val =11;
    bottomBullets[i] = new BottomBullet(bXValues[val], bYValues[val]);
    val = val+1;
  }

}

int shoot () {

  int bulletNum = round(random (0, 13));
  
  //update bulletnum tracker array
  for (int i = 13; i>0; i--){
    bulletNums[i]=bulletNums[i-1];
  }
    bulletNums[0]=bulletNum;

  
  printArray(bulletNums);
  println(bulletNum);
  fill(255);
  
  if (bulletNum < 4) {
    topBullets[bulletNum].drawBullet();
  }else if (4<bulletNum && bulletNum < 7) {
    int temp=bulletNum - 4;
    leftBullets[temp].drawBullet();
  }else if (7<bulletNum && bulletNum < 11) {
    int temp=bulletNum - 7;
    rightBullets[temp].drawBullet();
  }else if (11<bulletNum && bulletNum < 14) {
    int temp=bulletNum - 11;
    bottomBullets[temp].drawBullet();
  }
  
  //for (int i=0; i<13; i++){
  //topBullets[bulletNums[i]].drawBullet();
  //topBullets[bulletNums[i]].moveBullet();
  //}
  
  return bulletNum;
}
