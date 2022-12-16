class Invader {
  int x, y, iWidth, iHeight;
  int xOffset;
  int direction;

  Invader(int cx, int cy, int w, int h) {
    x = cx;
    y = cy;
    iWidth = w;
    iHeight = h;
    direction = 0;
    xOffset = Invader_xOffset;
  }

  void display() {
    rect(x, y, iWidth, iHeight);
  }

  void move(int leftLimit) {
    if (direction == 0) {
      x++;
      if (x >= leftLimit -iWidth - xOffset) {
        direction = 1;
      }
    } else if (direction == 1) {
      y+=iHeight;
      direction = 2;
    } else if (direction == 2) {
      x--;
      if (x <= iWidth/2 + xOffset) {
        direction = 3;
      }
    }
    else if (direction == 3) {
      y += iHeight;
      direction = 0;
    }
  }
}
