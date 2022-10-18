//All three "graphs" will use these variables
int angle; //The degree angle we will use for sin() and cos() functions.
int dotDiameter;//The size of the circle that will be graphing.
int counter = -1*width;

int sinAmplitude;
int circRadius;
int spiralRadius;

void setup() {
  size(600, 600);
  background(0);
  dotDiameter = 4;
  sinAmplitude = 100;
  circRadius = 100;
  spiralRadius = 100;
  angle = 0;
  stroke(255);
}//setup

void draw() {
  //background(0);
  //sin curve
  drawSinCurve(angle, sinAmplitude, sinAmplitude);
  //circle
  drawCircle(angle, circRadius, width/2, sinAmplitude*2 + circRadius);
  //concentric circles
  drawCircle(angle, spiralRadius, width/2, sinAmplitude*2 + circRadius*3);
  if ( radians(angle) % (2 * PI) == 0){
    if (radians(angle) == 0){
      spiralRadius = spiralRadius;
    }
    else {
      spiralRadius-=10;
    }
  }

  angle++;
}//draw

void drawSinCurve(int degrees, int amplitude, int yOffset) {
  //float degreesY = amplitude * sin(radians(degrees)) + yOffset;
  //circle(degrees,degreesY,dotDiameter);
  //float degreesCX = width + counter;
  //float degreesCY;
  //if (degrees > width){
  //  degreesCY = amplitude * sin(radians(degreesCX) + yOffset) + yOffset;
  //  circle(degreesCX, degreesCY, dotDiameter);
  //  //degreesCX ++;
  //  counter--;
  //}
  
  float degreesY = amplitude * sin(radians(degrees)) + yOffset;
  circle(degrees % width,degreesY,dotDiameter);
  //println("X: " + degrees + " CX: " + degreesCX);
}
void drawCircle(int degrees, int radius, int xOffset, int yOffset) {
  float degreesX = radius * cos(radians(degrees)) + xOffset;
  float degreesY = radius * sin(radians(degrees)) + yOffset;
  circle(degreesX, degreesY, dotDiameter);
  println("angle: "+ degrees + " degreesX: " + degreesX + " degreesY: " + degreesY); 
}
