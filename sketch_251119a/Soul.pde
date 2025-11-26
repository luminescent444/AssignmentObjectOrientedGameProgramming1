class Soul {

  void drawSoul () {
    PImage soulSprite = loadImage("soul.png");
    image(soulSprite, soulX, soulY, 15, 15);
  }

  void moveSoul() {

      position.add(velocity);
      
    }
  }
