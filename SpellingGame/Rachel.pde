/**
* Draws the duck character of our game
* @author Rachel LaFlamme
*/
class Rachel{
 int x;
  int y;
  int destinationX;
  int destinationY;
  int s;
  color c;
  int radius;
  int speed;
 /**Constructor*/
 Rachel(int _x, int _y, int _s, color _c) {
    x=_x;
    y=_y;
    destinationX=x;
    destinationY=y;
    s=_s +100;
    c=_c;
    speed=20;
    radius = s;
  }
  /**draw the character with x and y being the centre*/
  void display() {
  stroke(1);
  strokeWeight(.5); 
  fill(255,250,205);//body color
  ellipse(x, y +(s/8), ((s/10)/4) *8, ((s/10)/4) * 8.5);//body
  ellipse(x, y - (s/10), ((s/10)/4) *15, ((s/10)/4) *13);  //head
  fill(0,0,0);//eye color
  ellipse(x+ (s/10), y - (s/14), ((s/10)/4)* 2, ((s/10)/4)* 2); //right eye
  ellipse(x - (s/10), y - (s/14), ((s/10)/4)* 2, ((s/10)/4)* 2); //left eye
  fill(255,218,185);//mouth and wing color
  ellipse(x, y - (s/20), ((s/10)/4) * 3, ((s/10)/4) * 1.5); 
  ellipse(x + (s/11), y + (s/7), ((s/10)/4) * 1.5, ((s/10)/4) * 5); 
  ellipse(x - (s/11), y + (s/7), ((s/10)/4) * 1.5, ((s/10)/4) * 5);
  fill(255,255,0);
  beginShape();
  vertex(x - (s/22), y + (s/6));
  vertex(x - (s/25), y + (s/5.5));
  vertex(x - (s/38), y + (s/5.5));
  vertex(x - (s/22), y + (s/4.5));
  vertex(x - (s/15), y + (s/5.5));
  vertex(x - (s/18), y + (s/5.5));
  vertex(x - (s/22), y + (s/6));
  endShape();
  
  beginShape();
  vertex(x + (s/22), y + (s/6));
  vertex(x + (s/25), y + (s/5.5));
  vertex(x + (s/38), y + (s/5.5));
  vertex(x + (s/22), y + (s/4.5));
  vertex(x + (s/15), y + (s/5.5));
  vertex(x + (s/18), y + (s/5.5));
  vertex(x + (s/22), y + (s/6));
  endShape(); 
}
/**place the character on canvas*/
void place(int _x, int _y) {
    
    x=_x;
    y=_y;
    destinationX=_x;
    destinationY=_y;
  }
  /**moving of character*/
  void placeTravel(int _x, int _y) {
    destinationX=_x;
    destinationY=_y;
}
}
