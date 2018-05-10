/**
* Creates each letter of the word with an x and y position
* @author Felicia Villalobos
*/
class Letter{
  float x;
  float y;
  float r;
  float w;
  float h;
  String letter;
  boolean collided = false;
  /**Constructor*/
  Letter(float _x, float _y, float _w, float _h, String _letter){
    x = _x+_w/2;
    h = _h;
    y = _y+_w/2;
    w = _w;
    r = 0;
    letter = _letter;
  }
  /**display the character on the canvas*/
  void update(){
    noStroke();
    fill(r);
    textSize(32);
    text(letter, x, y);
  }
  /**checks if the collision with the ball and changes the x and y of the letter if collision happens */
  void gotHit(){
    collided = true;
    r = 255;
    textSize(32);
    x = x+500;
    y = y + 500;
    text(letter, x, y);
      
  }
  
  
}
