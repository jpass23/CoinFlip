color red = color(255,0,0); //red
color blue = color(0,0,255); //blue
color green = color(20,255,80); //green
color black = color(0,0,0); //green
float speed = 10.3;
Player P;
Room[] Rooms = new Room[14];
Board board;
//playerObserver obs; // no need for observer
Point startPos = new PointImpl(100,100);
color startColor = blue;

void setup(){
  size(200,400);
  textSize(15);
  P = new PlayerImpl(startPos.getX(),startPos.getY(),20,startColor);
  Rooms[0] = new RoomImpl(0,0,150,50,red);
  Rooms[1] = new RoomImpl(150,0,50,150,blue);
  Rooms[2] = new RoomImpl(50,150,100,50,red);
  Rooms[3] = new RoomImpl(0,50,50,100,blue);
  Rooms[4] = new RoomImpl(50,50,100,100,black);
  Rooms[5] = new RoomImpl(0,200,200,50,red);
  Rooms[6] = new RoomImpl(0,150,50,50,black);
  Rooms[7] = new RoomImpl(150,150,50,50,black);
  Rooms[8] = new RoomImpl(0,250,50,50,black);
  Rooms[9] = new RoomImpl(50,250,50,50,red);
  Rooms[10] = new RoomImpl(100,250,100,50,red);
  Rooms[11] = new RoomImpl(0,300,75,50,blue);
  Rooms[12] = new RoomImpl(75,300,75,50,blue);
  Rooms[13] = new RoomImpl(150,300,50,50,green);
  
  board = new BoardImpl(Rooms,P,startPos, startColor);
  //obs = new playerObserverImpl(p);
}

void draw(){
  //stroke(0);
  background(0,0,0);
  fill(255,255,255);
  text("Get to the green square", 25,375);
  board.drawBoard();
  P.drawPlayer();
  if(board.crossedWall()){
    P.colorFlip();
  }
  if(P.getColor() == board.getRoom().getColor()){
    board.reset();
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
      P.setPos(P.getPos().getX()+speed,P.getPos().getY());
    } else if (keyCode == LEFT) {
      P.setPos(P.getPos().getX()-speed,P.getPos().getY());
    } else if (keyCode == UP) {
      P.setPos(P.getPos().getX(),P.getPos().getY()-speed);
    } else if (keyCode == DOWN) {
      P.setPos(P.getPos().getX(),P.getPos().getY()+speed);
    }
  }
}
