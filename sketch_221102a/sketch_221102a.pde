//Farihah, Eric, Farihah
//Farihah, Eric, Farihah
int a, b;
float angle;
void setup(){
 size(500,500);
 background(245,30,98);
 a = 30;
 b = 2; 
 angle = 0.0;
 frameRate(200);
}

void draw(){
  float x = width/2+roseCurves(angle,a,b)*cos(radians(angle));
  float y = height/2+roseCurves(angle,a,b)*sin(radians(angle));
  if (int(y/(height/2))==0){
    stroke(233);
  }
  else if (int(x/(width/2))==0){
    stroke(0,255,0);
  }
  else{
    stroke(0);
  }
  circle(x,y,1);
  angle += 0.1;
  println(x,y);
}


float roseCurves(float angle, int a, int b){
  float r = 5*a*sin(b*radians(angle));  
  return r;
}
