
//SOUL OBJECT

class Soul {

  //FUNCTION TO DRAW THE SOUL

  void drawSoul () {
    //load the soul sprite into a PImage variable
    PImage soulSprite = loadImage("soul.png");
    //draw the soul sprite PImage
    image(soulSprite, position.x, position.y, 15, 15);
  }

  //FUNCTION TO MOVE THE SOUL

  void moveSoul() {

    //add the soul's velocity to its location
    position.add(velocity);
  }
}
