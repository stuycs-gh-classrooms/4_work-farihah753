int movingX, movingY, radius;

void setup() {
  size(200, 200);
  background(255);
  frameRate(10);
  radius = width/10; //20
  movingX = (radius)/2; //10
  movingY = (3*radius)/2; //10
  circleRow(radius/2, width, radius/2, radius);
}

void circleRow(int startX, int endX, int y, int d) {
  while (startX < endX) {
    circle(startX, y, d);
    startX += d;
  }
}

//void draw() {
//  int startX, y, d;
//  startX = movingX;
//  y = movingY;
//  d = radius;

//  //allows me to change the diameter without ruining the "scaling"
//  movingY += radius; //30
//  if (movingY < height) { // 30 < 200
//    movingX = radius/2;
//    if (movingX < width) { // 10 < 200
//      //if (frameCount % 10 == 0){
//      //background(255);
//      fill(0, 255, 0);
//      circleRow(startX, width, y, d);
//      circle(movingX, movingY, radius);

//      //}
//      println(movingX, movingY, radius);
//      movingX++;
//    }
//    movingY += radius;
//  }
//}

//void draw(){
//  if (movingX < width){
//    background(0);
//    circle(movingX,movingY,radius);
//    movingX++;
//  }
//}

//void draw(){
////  background(255);
////  //noFill();
////  int d = 50;
////  //allows me to change the diameter without ruining the "scaling"
////  circleRow(d/2,width,d/2,d);

//    while(movingY < height){
//      movingX = radius/2;
//      while(movingX < width) {
//        background(0);
//        if (frameCount % 30 == 0){
//          circle(movingX,movingY,radius);
//          println("hello");
//        }

//        movingX++;
//        println(movingX,movingY,frameCount);
//      }
//      movingY += radius;
//    }
//  }

void draw(){
  int startX,y,d;
  startX = radius/2;
  y = radius/2;
  d = radius;
  if ( movingX < width + radius){
    background(255);
    fill(230,210,99);
    circleRow(startX, width, y, d);
    fill(200,100,50);
    circle(movingX,movingY,radius);
    movingX+=width/20;
  }
  else {
    movingX = -25;
    movingY += radius;
  }
  if ( movingY > height) {
    movingY = (3 * radius)/2;
  }
}
