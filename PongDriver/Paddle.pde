class Paddle {

  /* ===================
   Instance variables
   A Paddle should know the coordinates of
   its upper-left corner, as well as its
   width and height.
   Create instance variables to sore this information.
   =================== */
  int UPPER_CORNER_X;
  int UPPER_CORNER_Y;
  int pHeight;
  int pWidth;

  /* ===================
   Default Constructor
   Set the corner of the paddle to (0, 0) and
   the size of the paddle to the PADDLE_WIDTH
   and PADDLE_HEIGHT gloabl constants defined
   in PongDriver.
   =================== */
  Paddle() {
    UPPER_CORNER_X = 0;
    pWidth = PADDLE_WIDTH;
    pHeight = PADDLE_HEIGHT;
    UPPER_CORNER_Y = 0;
  }//default constructor

  /* ===================
   Position constructor
   Write a constructor that takes a single parameter that
   represents the value the x coordinate of the corner shold
   be.
   It should set the size of the ball the same way the
   default constructor does.
   The corner should be set such that:
   0) The paddle should be centered vertically on the screen.
   1) The x value should be the value of the parameter passed in.
   =================== */
  Paddle(int xoffset) {
    UPPER_CORNER_X += xoffset;
    pWidth = PADDLE_WIDTH;
    pHeight = PADDLE_HEIGHT;
    UPPER_CORNER_Y = 0;
  }//x offset constructor

  /* ===================
   void display()
   Draw a rectangle using the instance vairables.
   =================== */
  void display() {
    rect(UPPER_CORNER_X, UPPER_CORNER_Y, pWidth, pHeight);
  }//display

  /* ===================
   void move(int x)
   Set the y value of the corner of the paddle
   to the provided parameter.
   =================== */
  void move(int y) {
    UPPER_CORNER_Y = y;
  }//move

  /* ===================
   boolean hitRight(Ball b)
   Should return true if the Ball parameter is hitting
   the right side of the paddle.
   =================== */
  boolean hitRight(Ball b) {
    if (b.cy - UPPER_CORNER_Y >= 0 && (b.cy - UPPER_CORNER_Y) <= pHeight) {
      if (b.cx <= pWidth + UPPER_CORNER_X + b.radius)
        return true;
    }
    return false;
  }//hitLeft

  boolean hitLeft(Ball b) {
    if (b.cy-UPPER_CORNER_Y >= 0 && (b.cy - UPPER_CORNER_Y) <= pHeight) {
      if (b.cx >= UPPER_CORNER_X) {
        return true;
      }
    }
    return false;
  }
}//Paddle
