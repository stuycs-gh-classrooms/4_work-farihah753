class Land {
  //Instance Variables
  int landSize;
  int x,y;
  int state;
  int nextState;
  
  //constructor 
  Land(int cx, int cy, int size, int type){
    x = cx;
    y = cy;
    landSize = size;
    state = type;
  }
  
  //display 
  void display(){
    rect(x,y,landSize,landSize);
  }
}
