class Levels{
  int[] mazeSizes = {6,8,10,12,15,20};
  int[] difference = {0,13,20,25,30,35};
  int[] positions = {5, 7, 12, 18, 20};
  int i;
  Maze maze;
  Ann ann;
  Dictionary dict;
  letterImage[] images;
  //ArrayList< ArrayList<Integer>> coordinates = new ArrayList<ArrayList<Integer>>();
  Levels(int _i, String word){
    i = _i;
    letterImage[] images = new letterImage[word.length()];
    maze = new Maze(width/2-300,(height/2-300),600,mazeSizes[i]);
    ann = new Ann(maze.x+maze.step/2, maze.y+maze.step/2,3*maze.step/4,color(255,127,0));
    String[] list = word.split("");
    
    
    
  }
  void display(){
    
  }
  void placeLetters(String[] list){
    int j = 0;
    int k =0;
    for (String s:list){
      String name = "GameLetters/"+s+".png";
      println(maze.xyList);
      int x = maze.xyList.get(positions[k]).get(0);
      int y = maze.xyList.get(positions[k]).get(1);
      letterImage img = new letterImage(x,y , maze.step, name);
      img.display();
      k++;
      //images[j] = img;
      j++;
    }
  }
}
