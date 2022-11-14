int[] xvals, yvals;
int numPoints;

void setup() {
  size(600, 600);
  background(0);
  xvals = new int[100];
  yvals = new int[100];
  numPoints = 100;

  makeLines(xvals, yvals, numPoints);
  drawLines(xvals, yvals);
}

void makeLines(int[] xs, int[] ys, int points) {
  if (points <= 100) {
    for (int i = 0; i < points; i++) {
      xs[i] = int(random(1, width));
      ys[i] = int(random(1, height));
    }
  }
}

void drawLines(int[] xs, int[] ys) {
  if ( numPoints <= 100) {
    for (int i = 0; i < numPoints-1; i++) {
      stroke(255);
      line(xs[i], ys[i], xs[i+1], ys[i+1]);
      println(xs[i], ys[i], xs[i+1], ys[i+1]);

      //line(255,300,400,500);
    }
  }
}
