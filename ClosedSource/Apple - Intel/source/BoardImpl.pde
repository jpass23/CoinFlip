public class BoardImpl implements Board{
  private Player player;
  private Room[] roomList;
  private Room playerHere;
  private Point startPos;
  private color startColor;
  
  public BoardImpl(Room[] r, Player p, Point pos, color col){
    this.roomList = r;
    this.player = p;
    for(Room room : roomList){
      if(room.isInside(player)){ //if player is in the room
        this.playerHere = room;
      }
    }
    this.startPos = pos;
    this.startColor = col;
  }
  
  public void reset(){
    player.setPos(startPos.getX(),startPos.getY());
    player.setColor(startColor);
    for(Room room : roomList){
      if(room.isInside(player)){ //if player is in the room
        this.playerHere = room;
      }
    }
  }
  
  public Player getPlayer(){
    return this.player;
  }
  public void drawBoard(){
    for(Room r : roomList){
      r.drawRoom();
    }
  }
  public boolean crossedWall(){
    for(Room r : roomList){
      if(r.isInside(player)){ //if player is in the room
        if(!this.playerHere.equals(r)){ //check if it is a new room
          this.playerHere = r;
          return true;
        }
      }
    }
    return false;
  }
  public Room getRoom(){
    return this.playerHere;
  }
}
