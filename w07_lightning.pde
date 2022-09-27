void drawLightning(int x, int y, int numParts) {
  int nextx;
  int nexty = y;
  println(x, y);
  int incrementY = height / numParts;
  //nexty = 10
  while (y < height) {
    println(x, y);
    nextx = int(random(x-5, x+6));
    nexty = y; //need this to change the value of y using incrementY
    line(x, y, nextx, nexty + incrementY);
    x = nextx; //x will take the value of the previous nextx thats the way they are connected
    y = nexty + incrementY;
    strokeWeight(random(5));
    stroke(int(random(256)), int(random(256)), int(random(256))); //colorful lightning?
  }
}

void setup() {
  size(500, 500);
  int i = int(random(8));
  textSize(50);
  if (i > 6) {
    text("Definitely Dangerous Lightning", 50, 50);
  } else if (i > 4) {
    text(" Dangerous Lightning", 50, 50);
  } else if (i > 2) {
    text("Lightning", 50, 50);
  } else if ( i > 0) {
    text("Nothing To Be Scared of", 50, 50);
  } else {
    text("Clear Skies", 50, 50);
  }

  for (int start = 0; start < i; start = start +1) {
    drawLightning(int(random(500)), int(random(100)), int(random(1, 50)));
  }
}
