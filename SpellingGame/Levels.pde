/**
* Controls the levels of the maze
* @author Josephine Nyoike
*/
class Levels{
  int[] positions = {12, 20, 3, 6, 8, 9, 34, 7, 23};
  int i;
  Maze maze;
  Rachel ann;
  Letter[] letters;
  /**Constructor*/
  Levels(int _i){
    i = _i;
    maze = new Maze(width/2-300,(height/2-210),600,6);
    ann = new Rachel(maze.x+maze.step/2, maze.y+maze.step/2,3*maze.step/4,color(255,127,0));
    
    
  }
  /**diplay level*/
  void display(){
    
  }
  /**place letters on the maze*/
  void placeLetters(String[] list){
    //images = new letterImage[list.length];
    letters = new Letter[list.length];
    int j = 0;
    int k =0;
    for (String s:list){
      //String name = "GameLetters/"+s+".png";
      //println(maze.xyList);
      int x = maze.cells.get(positions[k]).x;
      int y = maze.cells.get(positions[k]).y;
      Letter lt = new Letter(x,y , maze.step, maze.step, s);
      //img.display();
      //lt.update();
      k++;
      letters[j] = lt;
      j++;
    }
  }
}
