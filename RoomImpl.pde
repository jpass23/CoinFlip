public class RoomImpl implements Room{
  private final color Color;
  private final int Width;
  private final int Height;
  private final Point Pos;
  
  public RoomImpl(float x, float y, int w, int h, color c){
    this.Color = c;
    this.Width = w;
    this.Height = h;
    Pos = new PointImpl(x,y);
  }
  public color getColor(){
    return this.Color;
  }
  public Point getPosition(){
    return this.Pos;
  }
  public int getWidth(){
    return this.Width;
  }
  public int getHeight(){
    return this.Height;
  }
  public void drawRoom(){
    fill(Color);
    rect(Pos.getX(),Pos.getY(),Width,Height);
  }
  public Point getCenter(){
    float tempX = Pos.getX()+(Width/2);
    float tempY = Pos.getY()+(Height/2);
    return new PointImpl(tempX,tempY);
  }
  public boolean isInside(Player p){
    if((p.getPos().getX() > Pos.getX()) 
    && (p.getPos().getX() < (Pos.getX()+Width)) 
    && (p.getPos().getY() > Pos.getY())
    && (p.getPos().getY() < (Pos.getY() + Height))){
      return true;
    }
    return false;
  }
}
