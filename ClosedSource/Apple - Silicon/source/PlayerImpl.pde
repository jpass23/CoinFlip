public class PlayerImpl implements Player{
  private final int Diameter;
  private color Color;
  private Point Pos;
  //private ArrayList<playerObserver> observers = new ArrayList<playerObserver>();
  
  public PlayerImpl(float x, float y, int d, color c){
    this.Diameter = d;
    this.Color = c;
    this.Pos = new PointImpl(x,y);
  }
  public int getDiameter(){
    return this.Diameter;
  }
  public color getColor(){
    return this.Color;
  }
  public Point getPos(){
    return this.Pos;
  }
  public void setColor(color c){
    this.Color = c;
    //for(playerObserver o : observers){
    //  o.update();
    //}
  }
  void setPos(float x, float y){
    this.Pos = new PointImpl(x,y);
    //for(playerObserver o : observers){
    //  o.update();
    //}
  }
  void drawPlayer(){
    //noStroke();
    fill(Color);
    ellipse(Pos.getX(),Pos.getY(),Diameter,Diameter);
  }
  //void addObserver(playerObserver p){
  //  observers.add(p);
  //}
  //void removeObserver(playerObserver p){
  //  observers.remove(p);
  //}
  void colorFlip(){
    if(Color == color(255,0,0)){
      this.Color = color(0,0,255);
    }else{
      this.Color = color(255,0,0);
    }
  }
}
