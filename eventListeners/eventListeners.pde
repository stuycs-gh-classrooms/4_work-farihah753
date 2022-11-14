
//user driven events -- mouse info
//capture the event and then code that does what should happen after captured
//makes sense for this to happen in draw because forever loop
void setup() {
  size(600, 400);
  background(0);
  fill(0, 255, 0);
  rect(0, 0, 50, 50);
  fill(255, 0, 0);
  rect(0, 75, 50, 50);
}

void draw() {
  //background(0);// the circle from mouseprossed will show and then get erased
}

void mousePressed() {

  if(mouseX <= 0 || mouseX <= 50){
      fill(0, 255, 0);
  }
  circle(mouseX, mouseY, 15);
}// will run this method whenever mouse (any button) is pressed
//not like setup or draw; because draw blocks other stuff
//looks out for the event; when the event happens it interupst other things happening and then afterwards resumes the rest of the program

void mouseReleased() {
  fill(255, 0, 0);
  circle(mouseX, mouseY, 15);
}
//mouseclick is complicated because include both pressed and released
