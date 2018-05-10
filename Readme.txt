
In order to run the code, download processing from https://processing.org/download/. 
Download our most recent code from github link : https://github.com/Jnyoike/CS220Final. Select the SpellingGame.pde file. 
When this is selected, all the files connected to our game should appear in the tabs. Click Run at the top left of the screen

Known logical errors:

Some of the letters are found in the solution path and force the user to spell the word incorrectly.

At the beginning of this project, the maze that we used as the basis of our game created more difficult levels as the user completed the maze. However, we were unable to implement this because of how processing is structured. The maze is created in the draw() function which we learned is an infinite loop. We created a list of cells called the xyList so we could pick random coordinates to place the letters. However, the xyList was consistently updated every time the maze was drawn since the maze updates each time the maze is completed. Initially we tried to call a random coordinate to place the letter in the maze, but the letters ended up flashing across the screen because the random coordinate selection was executed infinitely because the letters were also called in the maze class. To bypass this issue, we stopped using levels and created a maze that consistently uses the same xyList; however, the walls and the solution still consistently change after the maze is completed. Because we were able to create a static xyList, we were able to select a coordinate for each letter that remains consistent in the maze in the draw function for each level that the user plays. The reason that this issue spiralled into a larger problem is because we also had a “cellstack” that held the coordinates of all the cells that are contained in the solution path. However, the solution path is constantly changing so we didn’t know to have that array consistently update with the xyList without having the letters flash on the screen due to the infinite loop draw function.

Independent learning:
Our game was coded in an entirely new language that was not reviewed in class. We learned the new syntax and shortcomings of this new code.
