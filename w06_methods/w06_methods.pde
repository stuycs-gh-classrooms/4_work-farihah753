void twwLogo(int topMiddlex, int topMiddley){
  strokeWeight(4);
  stroke(0, 0, 255);
  int translationX = width/8;
  int translationY = height/4;
  line(topMiddlex, topMiddley, topMiddlex - translationX, topMiddley);
  line(topMiddlex, topMiddley, topMiddlex + translationX, topMiddley);
  line(topMiddlex, topMiddley, topMiddlex, topMiddley + translationY);
  stroke(0, 255, 255);
  line(topMiddlex - translationX, topMiddley, topMiddlex - translationX, topMiddley + translationY);
  line(topMiddlex + translationX, topMiddley, topMiddlex + translationX, topMiddley + translationY);
  line(topMiddlex + translationX, topMiddley, topMiddlex + translationX, topMiddley + translationY);
  line(topMiddlex - translationX, topMiddley + translationY, topMiddlex, topMiddley);
  line(topMiddlex + translationX, topMiddley + translationY, topMiddlex, topMiddley);
  
}
void book(int bottomRightx, int bottomRighty){
  stroke(#713507);
  fill(#F2E4DA);
  arc(bottomRightx, bottomRighty, width/4 , height/8, PI, PI + PI);
  arc(bottomRightx + width/4, bottomRighty, width/4 , height/8, PI, PI + PI);
  rect(200,250,240,50);
  line(320,250,320,300);
  rect(bottomRightx - width/8, bottomRighty, width/2, height/4); 
  strokeWeight(.6);
  for(int i = bottomRighty; i < (3 *height)/4;) {
    i = i + height/20;
    line(bottomRightx - width/8, i,bottomRightx + (3 * width)/8,i);
  }

}
void setup(){
  size(100,100);
  twwLogo(width/2, (height)/4);
  twwLogo(25, 10);
  twwLogo(75, 10);
  twwLogo(25, 75);
  book(width/2 - width/8, (height/2)+ width/16);
}
