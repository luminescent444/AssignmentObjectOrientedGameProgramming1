class Soul {

  void drawSoul () {
    PImage soulSprite = loadImage("soul.png");
    image(soulSprite, position.x, position.y, 15, 15);
  }

  void moveSoul() {

      position.add(velocity);
      
    }
  }
