import java.util.*;
class Image{
  PImage img;
  int x;
  int y;
  //PImage img_loaded;
  //cannot accept a map of chars and strings?

  Image(int _x, int _y, PImage _img ){
     
    //img = loadImString age(imgNamletters.get(_letter
    img=_img;
    //img = loadImage(imgName);
    x = _x;
    y = _y;
    
  }
  void display(){
    image(img, x, y);
  }
  void remove(){
    
  }
  
}
