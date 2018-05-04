//initializing variables
Maze maze;
//Joe jo;
Ann jo;
Dictionary dict;
String word = "CAT"; 
String[] word_list = word.split("");//test word
//Rachel rachel = new Rachel(0, 0, 85, 2);
Character[] alphabet = {'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'};
public Map<Character, PImage> letters = new TreeMap<Character, PImage>(); //treemap of images and letters

//PFont font;

int[] mazeSizes = {
  6,8,10,12,15,20
};
int mazeIndex=0;
 
boolean finished;
long timer;
int secretMazeSize;
PImage img;
PImage img1;
void setup() {
  size(650,650); //size of window
  background(255,245,235); //sets the background color
  maze = new Maze(width/2-300,(height/2-300),600,mazeSizes[0]); //new maze created
  jo = new Ann(maze.x+maze.step/2, maze.y+maze.step/2,3*maze.step/4,color(255,127,0));
  dict = new Dictionary("farm_animals.txt");
  
  
  finished = false;
  //timer = millis(); //start the timer
  /*
  //load images and create the Map
  for (Character c: alphabet){
    String imgName = "GameLetters/"+ c +".png";
    img = loadImage(imgName);
    letters.put(c, img);
    
  }
  
  //println(letters);*/
  
}
void draw() {
  

  if (!maze.complete) {
    maze.routeStep();
  }
  
  else {
    if (!finished) {
      
      background(255);
      maze.display(word_list);
      
      //indicate destination cell
      fill(200,255,200);
      stroke(0,255,0);
      strokeWeight(3);
      ellipse(maze.destinationX+maze.step/2,maze.destinationY+maze.step/2,3*maze.step/4+2,3*maze.step/4+2);
 
      //show player initial position
      jo.display();
      
       //check for collission
       int[] difference = {0,13,20,25,30,35};
       //if (maze.C.x+(50-difference[0]) == jo.x && maze.C.y+(50- difference[0]) == jo.y){
        // try1.isDrawn = false;
        // maze.C.remove(); 
       //}
       //println(try1.x+(50-difference[0]));
 
      if (jo.x>maze.destinationX && jo.y>maze.destinationY) {
        finished = true;
      }
      
    }
    else {
      noStroke();
      fill(255,255,140,10);
      rect(0,0,width,height);
      fill(255);
      rect(width/6,height/2-125,4*width/6,250);
      //textFont(font,60);
      textAlign(CENTER,CENTER);
      fill(0);
      text("you win!\nhit space for\na new maze",width/2,height/2);
    }
  }
  //dict.display(dict.pickVal());
}
 
void keyPressed() {
 
  if (!finished) {
    boolean[] walls = maze.travelThrough(jo.x, jo.y);
 
    if (keyCode == UP) {
      if (!walls[0]) jo.place(jo.x,max(maze.step/2,jo.y-maze.step));
    }
    if (keyCode == DOWN) {
      if (!walls[1]) jo.place(jo.x,min(height-maze.step/2,jo.y+maze.step));
    }
    if (keyCode == LEFT) {
      if (!walls[2]) jo.place(max(maze.step/2,jo.x-maze.step),jo.y);
    }
    if (keyCode == RIGHT) {
      if (!walls[3]) jo.place(min(width-maze.step/2,jo.x+maze.step),jo.y);
    }
  }
  
  else {
    if (key == ' ') {
      background(255,245,235);
      mazeIndex = (mazeIndex+1) % mazeSizes.length;
      //maze = new Maze(width/2-300,(height/2-300),600, mazeSizes[0]);
      //draw();
      maze.reset(mazeSizes[mazeIndex]);
      jo.resize(3*maze.step/4);
      jo.place(maze.x+ maze.step/2, maze.y+maze.step/2);
      println("Size = " + maze.cells.size());
    }
  }
 
  //secret maze generation
  //if (key == 'n') {
    //CREATE A NEW MAZE
    //background(255,245,235);
    //secretMazeSize+=10;
    //maze.reset(secretMazeSize);
    //jo.resize(3*maze.step/4);
    //jo.place(maze.x+ maze.step/2, maze.y+maze.step/2);
  //}
}
  
