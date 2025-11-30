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
  
}

void shoot () {
  
  int bulletNum = 0;
  bulletNum = round(random (0,13));
  
  if (bulletNum < 4) {
    
    myTopBullet = new TopBullet(200,200); //put in numbers
    
  }
  
}
