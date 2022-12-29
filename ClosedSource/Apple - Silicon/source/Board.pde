interface Board{
  Player getPlayer();
  void drawBoard();
  boolean crossedWall(); //returns true if the player has just switched rooms
  Room getRoom(); //gets room the player is in
  void reset();
}
