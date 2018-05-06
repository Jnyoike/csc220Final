
public class letterImage {
  
  boolean isDrawn = true;
  public PImage img;
 //pass ub filename 
 //load the list of cells? 
  public int x;
  public int y;
  public int w;
  String letter;
  //ArrayList<ArrayList<Integer>> xyList = maze.xyList;
  
  letterImage(int _x, int _y, int _w, String filename) {
    letter = filename.substring(0, 1);
    img = loadImage(filename); 
    x = _x;
    y = _y;
    w = _w;
    //image(imgA, x, y);
  }
  
  void display() {
    if (isDrawn) {
      //noLoop();
      img.resize(w,w);
      image(img, x, y);
    }
  }
  void remove() {
    tint(255, 0);
   }
   void place(int _x, int _y){
     
   }
}
