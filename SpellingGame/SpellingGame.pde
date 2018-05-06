//initializing variables
Maze maze;
//anne ann;
Ann ann;
Dictionary dict;
String word = "CAT"; 
String[] word_list = word.split("");//test word
//Rachel rachel = new Rachel(0, 0, 85, 2);
Character[] alphabet = {'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'};
//public Map<Character, PImage> letters = new TreeMap<Character, PImage>(); //treemap of images and letters
//PFont font;
ArrayList<String> spelled_word;
int[] mazeSizes = {
  6,8,10,12,15,20
};
int mazeIndex=0;
Levels level;
boolean finished;
long timer;
int secretMazeSize;
PImage img;
PImage img1;
void setup() {
  size(650,650); //size of window
  background(255,245,235); //sets the background color
  noStroke();
  fill(255,255,140,10);
  rect(0,0,width,height);
  fill(255);
  rect(width/6,height/2-125,4*width/6,250);
  //textFont(font,60);
  textAlign(CENTER,CENTER);
  rect(width/6,height/2-125,4*width/6,250);
  textAlign(CENTER,CENTER);
  fill(0);
  text("Start Game",width/2,height/2);
  //text("Start Game",width/2,height/2);
  //StartButton user = new StartButton();
  //user.display();
  level = new Levels(0, word);
  level.display();
  dict = new Dictionary("farm_animals.txt");
  spelled_word = new ArrayList<String>();
  
  finished = false;
  //noLoop();
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
  

  if (!level.maze.complete) {
    level.maze.routeStep();
  }
  
  else {
    if (!finished) {
      
      background(255);
      level.maze.display();
      level.placeLetters(word_list);
      //indicate destination cell
      fill(200,255,200);
      stroke(0,255,0);
      strokeWeight(3);
      ellipse(level.maze.destinationX+level.maze.step/2,level.maze.destinationY+level.maze.step/2,3*level.maze.step/4+2,3*level.maze.step/4+2);
 
      //show player initial position
      level.ann.display();
      
       //check for collission
       int[] difference = {0,13,20,25,30,35};
       //if (level.maze.C.x+(50-difference[0]) == level.ann.x && level.maze.C.y+(50- difference[0]) == level.ann.y){
         //String l = level.maze.C.letter;
         //spelled_word.add(l); //its adding the letter over and over again... definitely a problem
         //level.maze.C.remove();
         //println(spelled_word);
       //}
       //println(try1.x+(50-difference[0]));
      
      if (level.ann.x>level.maze.destinationX && level.ann.y>level.maze.destinationY) {
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
    boolean[] walls = level.maze.travelThrough(level.ann.x, level.ann.y);
 
    if (keyCode == UP) {
      if (!walls[0]) level.ann.place(level.ann.x,max(level.maze.step/2,level.ann.y-level.maze.step));
      //redraw();
    }
    if (keyCode == DOWN) {
      if (!walls[1]) level.ann.place(level.ann.x,min(height-level.maze.step/2,level.ann.y+level.maze.step));
      //redraw();
    }
    if (keyCode == LEFT) {
      if (!walls[2]) level.ann.place(max(level.maze.step/2,level.ann.x-level.maze.step),level.ann.y);
      //redraw();
    }
    if (keyCode == RIGHT) {
      if (!walls[3]) level.ann.place(min(width-level.maze.step/2,level.ann.x+level.maze.step),level.ann.y);
      //redraw();
    }
  }
  
  else {
    if (key == ' ' && level.i < level.mazeSizes.length) {
      background(255,245,235);
      level.i = level.i + 1;
      level = new Levels(level.i, word);
      level.display();
      level.maze.reset(level.mazeSizes[level.i]);
      //mazeIndex = (mazeIndex+1) % mazeSizes.length;
      //maze = new Maze(width/2-300,(height/2-300),600, mazeSizes[0]);
      //draw();
      //maze.reset(mazeSizes[mazeIndex]);
      //ann.resize(3*maze.step/4);
      //ann.place(maze.x+ maze.step/2, maze.y+maze.step/2);
      //dict.display();
    }
  }
 
  //secret maze generation
  //if (key == 'n') {
    //CREATE A NEW MAZE
    //background(255,245,235);
    //secretMazeSize+=10;
    //maze.reset(secretMazeSize);
    //ann.resize(3*maze.step/4);
    //ann.place(maze.x+ maze.step/2, maze.y+maze.step/2);
  //}
}
  
