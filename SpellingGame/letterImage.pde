
public class letterImage {
  
  boolean isDrawn = true;
  public PImage img;
 //pass ub filename 
 //load the list of cells? 
  public int x;
  public int y;
  public int w;
  
  letterImage(int _x, int _y,int _w, String filename) {
    img = loadImage(filename); 
    x = _x;
    y = _y; 
    w = _w;
    //image(imgA, x, y);
  }
  
  void display() {
    if (isDrawn) {
      img.resize(w,w);
      image(img, x, y);
     
    }
    else{
      tint(255, 127);
    }
  }
  void remove() {
    tint(255, 0);
  
   }
}
