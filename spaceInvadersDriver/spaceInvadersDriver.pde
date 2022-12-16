//ship
int SHIP_WIDTH, SHIP_HEIGHT;
int Ship_yOffset;
int SPEED;
Ship ship;

//invader
int INVADER_WIDTH, INVADER_HEIGHT;
int Invader_yOffset, Invader_xOffset;
Invader invader;

void setup(){
  size(700,350);
  //ship
  SHIP_WIDTH = 100;
  SHIP_HEIGHT = 50;
  Ship_yOffset = 75;
  SPEED = 10;
  ship = new Ship(width/2, height-Ship_yOffset , SHIP_WIDTH, SHIP_HEIGHT);
  ship.display();
  //ship
  
  //invader 
  INVADER_WIDTH = 50;
  INVADER_HEIGHT = 25;
  Invader_yOffset = 50;
  Invader_xOffset = 20;
  invader = new Invader(Invader_xOffset,Invader_yOffset,INVADER_WIDTH,INVADER_HEIGHT);
  
  
  
}

void draw(){
  background(0);
  ship.display();
  invader.display();
  invader.move(width);
  println(invader.direction);
}

void keyPressed(){
  if (key == 'd'){
    if ( ship.x <= width - SHIP_WIDTH/2){
      ship.moveRight();
    }
  }
  if (key == 'a'){
    if ( ship.x >= SHIP_WIDTH/2){
      ship.moveLeft();
    }
  }
}
