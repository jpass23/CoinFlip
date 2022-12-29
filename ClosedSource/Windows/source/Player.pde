interface Player{
  int getDiameter();
  color getColor();
  Point getPos();
  void setColor(color c);
  void setPos(float x, float y);
  //void addObserver(playerObserver p);
  //void removeObserver(playerObserver p);
  void drawPlayer();
  void colorFlip();
}
