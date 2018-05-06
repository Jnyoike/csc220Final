class Rachel{
  float x;
  float y;
  float scale;
  float speed;
  float size;
  
  Rachel(float _x, float _y, float _scale, float _size){
    float x = _x;
    float y = _y;
    float scale = _scale;
    float speed = 3;
    float size = _size;  
  }
  void display() {
    
    fill(255,250,205);
    ellipse(x + (scale/2), y + (scale/1.40), size *8, size * 8.5);
    ellipse(x + (scale/2), y + (scale/2), size *15, size *13);  
    fill(0,0,0);
    ellipse(x + (scale/2.5), y + (scale/1.85), size* 2, size* 2); 
    ellipse(x + (scale/1.65), y + (scale/1.85), size* 2, size* 2); 
    fill(255,218,185);
    ellipse(x + (scale/2), y + (scale/1.80), size * 3, size * 1.5); 
    ellipse(x + (scale/2.42), y + (scale/1.38), size * 1.5, size * 5); 
    ellipse(x + (scale/1.70), y + (scale/1.38), size * 1.5, size * 5); 
    fill(255,255,0);
    beginShape();
    vertex(x + (scale/1.80), y + (scale/1.30));
    vertex(x + (scale/1.77), y + (scale/1.28));
    vertex(x + (scale/1.73), y + (scale/1.28));
    vertex(x + (scale/1.80), y + (scale/1.23));
    vertex(x + (scale/1.87), y + (scale/1.28));
    vertex(x + (scale/1.83), y + (scale/1.28));
    vertex(x + (scale/1.80), y + (scale/1.30));
    endShape();
    
    beginShape();
    vertex(x + (scale/2.20), y + (scale/1.30));
    vertex(x + (scale/2.16), y + (scale/1.28));
    vertex(x + (scale/2.10), y + (scale/1.28));
    vertex(x + (scale/2.20), y + (scale/1.23));
    vertex(x + (scale/2.30), y + (scale/1.28));
    vertex(x + (scale/2.25), y + (scale/1.28));
    vertex(x + (scale/2.20), y + (scale/1.30));
    endShape(); 
}
}
