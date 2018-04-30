class Ann{
  int x;
  int y;
  int destinationX;
  int destinationY;
  int s;
  color c;
  int radius;
 
  int speed;
 
  Ann(int _x, int _y, int _s, color _c) {
    x=_x;
    y=_y;
    destinationX=x;
    destinationY=y;
    s=_s;
    c=_c;
    speed=20;
    radius = s;
  }

void display() {
    if (x<destinationX)x=min(destinationX,x+speed);
    else if (x>destinationX) x=max(destinationX,x-speed);
 
    if (y<destinationY) y=min(destinationY,y+speed);
    else if (y>destinationY) y=max(destinationY,y-speed);

    //face
    fill(#e547d3);
    noStroke();
    ellipse(x,y,s,s);
    
    //eyes
    fill(#f9fcfc);
    ellipse(x-s/5,y,s/3.5,s/3.5);
    ellipse(x+s/5,y,s/3.5,s/3.5);
    
    //pupils
    fill(#070707);
    ellipse(x-s/7,y+s/30,s/7,s/7);
    ellipse(x+s/7,y+s/30,s/7,s/7);
    
    
    
    //mouth
    stroke(0);
    strokeWeight(2);
    arc(x,y+s/6,s/6,s/6,0,PI);
    
    //line(185,225,190,220);
    noStroke();
    fill(#e547d3);
    triangle(x,y-s/1.5,x+s/6,y-s/3,x-s/6,y-s/3);
    triangle(x+s/6,y-s/1.6,x,y-s/3,x+s/3,y-s/3);
    triangle(x-s/6,y-s/1.6,x,y-s/3,x-s/3,y-s/3);
    
    //feet 
    //fill(#070707);
    //ellipse(x+50,y+60,25,50);
  
}

  void resize(int _s) {
 
    s=_s;
  }
 
  void place(int _x, int _y) {
    
    x=_x;
    y=_y;
    destinationX=_x;
    destinationY=_y;
  }
 
  void placeTravel(int _x, int _y) {
    destinationX=_x;
    destinationY=_y;
}
}
