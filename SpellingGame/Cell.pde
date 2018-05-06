/**
*A class that creates the specific cells in the maze
*
*/
class Cell{
  //initializing variables.
  int x;
  int y;
  boolean[] walls = {
    true,true,true,true
  };
  int w;
  int visited = 0;
  boolean marked=false;
 /**constructor*/
  Cell(int _x, int _y, int _w) {
    x = _x;
    y= _y;
    w=_w;
  }
   //display the cell on the window when the function is called
  void display(int _weight) {
    noStroke();
    noFill();
    rect(x+_weight/2,y+_weight/2,w-_weight,w-_weight);
    //sets boundary to black
    stroke(0);
    //sets boundary width
    strokeWeight(_weight);
    //drawing the lines
    if (walls[0]) line(x,y,x+w,y);
    if (walls[1]) line(x,y+w,x+w,y+w);
    if (walls[2]) line(x,y,x,y+w);
    if (walls[3]) line(x+w,y,x+w,y+w);
  }
   //return to default maze elements
  void reset() {
    for (int i = 0; i < 4; i++) {
      walls[i]=true;
    }
    visited = 0;
  }
}
