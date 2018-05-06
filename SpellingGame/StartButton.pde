class StartButton{
  int rectX, rectY;
  int rectSize = 80;
  color rectColor;
  color rectHighlight;
  int value = 0;
  StartButton(){
    rectColor = color(0);
    rectHighlight = color(51);
    //rectX = width/2-rectSize-10;
    //rectY = height/2-rectSize/2;
    
  }
  void display(){
    
  }
  void mouseClicked() {
  if (value == 0) {
    value = 255;
  } else {
    value = 0;
   }
  }
  boolean overRect(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}


}

  
