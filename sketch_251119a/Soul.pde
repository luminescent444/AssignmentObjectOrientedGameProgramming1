class Soul {

  void drawSoul () {
    PImage soulSprite = loadImage("soul.png");
    image(soulSprite, soulX, soulY, 15, 15);
  }

  void moveSoul() {

    if (keyPressed) {
      if (keyCode == LEFT) {
        soulX = soulX - 2;
      }
      if (keyCode == RIGHT) {
        soulX = soulX + 2;
      }
      if (keyCode == UP) {
        soulY = soulY - 2;
      }
      if (keyCode == DOWN) {
        soulY = soulY + 2;
      }
    }
  }
}
