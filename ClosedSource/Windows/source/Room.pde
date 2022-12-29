interface Room{
  color getColor();
  Point getCenter(); 
  int getHeight();
  int getWidth();
  Point getPosition();
  void drawRoom();
  boolean isInside(Player p); //returns true if given player is inside the room
}
