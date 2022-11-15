int[] xvals, yvals;
int press;

void setup() {
  size(600, 600);
  background(0);
  xvals = new int[100];
  yvals = new int[100];
  press = 0;
}

void draw() {
  //background(0);
  stroke(255);
  //line(255, 255, 600, 300);
  drawLines(xvals, yvals);
}

void drawLines(int[] xs, int[] ys) {
  if ( press <= 100) {
    for (int i = 1; i < press; i++) {
      stroke(255);
      line(xs[i-1], ys[i-1], xs[i], ys[i]);
      println(xs[i-1], ys[i-1], xs[i], ys[i]);

      //line(255,300,400,500);
    }
  }
}

void mousePressed() {
  if (press <= 100) {
    xvals[press] = mouseX;
    yvals[press] = mouseY;
    press++;
  }
}

void keyPressed() {
  if (key == 'c') {
    background(0);
    for (int i = 1; i < press; i++){
      xvals[i-1]=0;
      yvals[i-1] = 0;
    }
  }
}
