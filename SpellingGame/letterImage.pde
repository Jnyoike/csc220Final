
public class letterImage {
  
  boolean isDrawn = true;
  public PImage img;
 //pass ub filename 
 //load the list of cells? 
  public int x= maze.pickRandomCoord().get(0);
  public int y= maze.pickRandomCoord().get(1);
  public int w;
  
  letterImage(int _w, String filename) {
    img = loadImage(filename); 
    
    w = _w;
    //image(imgA, x, y);
  }
  
  void display() {
    if (isDrawn) {
      noLoop();
      img.resize(w,w);
      image(img, x, y);
     
    }
    else{
      tint(255, 0);
    }
  }
  void remove() {
    tint(255, 0);
  
   }
}
