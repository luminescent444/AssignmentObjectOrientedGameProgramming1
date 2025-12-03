
//FUNCTION TO DRAW THE BACKGROUND FEATURES

void drawBackground () {

  //draw the green background lines

  //set the stroke to green
  stroke(#416F32);
  //draw the lines
  line(0, 100, 400, 100);
  line(0, 200, 400, 200);
  line(0, 300, 400, 300);
  line(80, 0, 80, 400);
  line(160, 0, 160, 400);
  line(240, 0, 240, 400);
  line(320, 0, 320, 400);

  //draw battle box

  //set the stroke to white
  stroke(255);
  //set the color to black
  fill(0);
  //draw the box
  rect(140, 170, 120, 120);
}
