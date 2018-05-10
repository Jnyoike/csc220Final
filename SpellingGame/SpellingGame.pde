import java.io.*;
import java.lang.*;
import java.util.*;
import processing.sound.*;
/**
* The main game and animation
*/
//initializing variables
Ann ann;
Dictionary dict; 
String word; 
String[] word_list;
SoundFile file;
String audioName = "song.mp3";
String path;
ArrayList<String> spelled_word;
Levels level;
boolean finished;
String word_description;
ArrayList<String> spelled = new ArrayList<String>();
ArrayList<String> initial_word = new ArrayList<String>();
/**Create the canvas, set the size and initialize the first level*/
void setup() {
  size(650,800); //size of window
  background(255,245,235); //sets the background color
  noStroke();
  fill(255,255,140,10);
  rect(0,0,width,height);
  fill(255);
  rect(width/6,height/2-125,4*width/6,250);
  textAlign(CENTER,CENTER);
  rect(width/6,height/2-125,4*width/6,250);
  textAlign(CENTER,CENTER);
  fill(0);
  text("Start Game",width/2,height/2);
  path = sketchPath(audioName);
  file = new SoundFile(this, path);
  
  level = new Levels(0);
  dict = new Dictionary("farm_animals.txt");
  level.display();
  word_description = dict.farm_animals.get(level.i).get(1);
  word = dict.farm_animals.get(level.i).get(0).toUpperCase();
  word_list = word.split("");
  for (String s: word_list){
    initial_word.add(s);
  }
  level.placeLetters(word_list);
  spelled_word = new ArrayList<String>();
    
  finished = false;
  file.play(); // play the background music
  
}
/**main animation loop*/
void draw() {
  if (!level.maze.complete) {
    level.maze.routeStep();
  }
  
  else {
    if (!finished) {
      background(255);
      level.maze.display();
      fill(10, 200, 255);
      rect(width/2-300, (height/32), 600, 150);
      fill(0);
      textSize(24);
      String description = word_description;
      text(description,width/2-30, height/32+75 );
      
      //indicate destination cell
      fill(200,255,200);
      stroke(0,255,0);
      strokeWeight(3);
      ellipse(level.maze.destinationX+level.maze.step/2,level.maze.destinationY+level.maze.step/2,3*level.maze.step/4+2,3*level.maze.step/4+2);
      level.ann.display();
      for (int i = 0; i < level.letters.length; i++){
        if (level.ann.x == level.letters[i].x && level.letters[i].y == level.ann.y && level.letters[i].collided == false){
          level.letters[i].gotHit();
          spelled.add(level.letters[i].letter);
        }
        level.letters[i].update();
      }

      
      //changed finished to true if character is at the destination cell
      if (level.ann.x>level.maze.destinationX && level.ann.y>level.maze.destinationY) {
        finished = true;
      }
      
    }
    else {
      //display instructions to get to a new maze when they complete the maze
      noStroke();
      fill(255,255,140,10);
      rect(0,0,width,height);
      fill(255);
      rect(width/6,height/2-125,4*width/6,250);
      //textFont(font,60);
      textAlign(CENTER,CENTER);
      fill(0);
      if(initial_word.equals(spelled)){
        text("you win!\nhit space for\na new maze\n or Q to quit",width/2,height/2);

      }
      else{
        text("Sorry pumpkin\nhit space for\na new maze\n or Q to quit",width/2,height/2);
      }
      }
      
      }
   
    
  }
  

/**Check if key is pressed and carry out different functions depending on the key that has been pressed*/
void keyPressed() {
  
  if (!finished) {
    boolean[] walls = level.maze.travelThrough(level.ann.x, level.ann.y);
    //move the character in the specified direction
    if (keyCode == UP) {
      if (!walls[0]) level.ann.place(level.ann.x,max(level.maze.step/2,level.ann.y-level.maze.step));
      
    }
    if (keyCode == DOWN) {
      if (!walls[1]) level.ann.place(level.ann.x,min(height-level.maze.step/2,level.ann.y+level.maze.step));
      
    }
    if (keyCode == LEFT) {
      if (!walls[2]) level.ann.place(max(level.maze.step/2,level.ann.x-level.maze.step),level.ann.y);
      
    }
    if (keyCode == RIGHT) {
      if (!walls[3]) level.ann.place(min(width-level.maze.step/2,level.ann.x+level.maze.step),level.ann.y);
      //redraw();
    }
  }
  //creates a new maze when space button is pressed with a new word and description
  else {
    if (key == ' ') {
      background(255,245,235);
      level.i = level.i + 1;
      level = new Levels(level.i);
      level.placeLetters(word_list);
      level.display();
      level.maze.reset(6);
      initial_word.clear();
      word_description = dict.farm_animals.get(level.i).get(1);
      word = dict.farm_animals.get(level.i).get(0).toUpperCase();
      word_list = word.split("");
      for (String s: word_list){
        initial_word.add(s);
      }
      level.placeLetters(word_list);
      spelled.clear();
    }
    
  }
  //quits the game
   if (key == 'q'){
      exit();
    }
  
}
  
