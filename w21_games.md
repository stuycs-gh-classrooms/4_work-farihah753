 # Breakout/Arkanoid
 1) What is the purpose of the game?
 The purpose of the game is to get rid of the blocks by hitting them with a ball using a paddle.
    
 2) What element(s) are controlled by the player?
 The x-movemnt of the paddle is controlled by the player. 
 
  3) What element(s) are controlled by the computer?
  The original number of blocks, their color, their state (if it is displayed or not), and their location is controlled by the computer. The initial location of the paddle and ball is controlled by the computer. The 
  
  4) How does the player control their element.
  The center x coordinate of the paddle is the same as the x coordinate of the mouse. 
  
  5) How do the non-player controlled elements behave (movement, positions, randomness, etc)?
  The ball has a velocity that is controlled by the computer, but its direction is dictated by whether the player hits the ball or not. The positions of the blocks are set. 
  
6) If you were to program this, what classes would you write?
I would have a paddle class, a ball class, and a block class. 

7) If you were to program this, would you use an array for some parts? What kind of array? What would you be storing in it?
I would create a 2d array to create the blocks. Each block is an object and each object is in a row with other blocks of the same color and there are a certain number of columns. 

# Space Invaders
1) What is the purpose of the game?
The purpose of the game is to successfully hit all the invaders while you still have all your lives. 
    
2) What element(s) are controlled by the player?
The movement of the rocket and its ability to shoot is controlled by the player.

3) What element(s) are controlled by the computer?
The movemnet of the invaders and when they attack is controlled by the computer.

4) How does the player control their element.
The left and right arrow keys determine the direction of the rocket's movement. The space bar determines when the rocket will attack. 
    
5) How do the non-player controlled elements behave (movement, positions, randomness, etc)?
The movemnet of the inavders goes across the screen until it gets to the edge of the screen at which point it goes in the other direction. When the inavders attack seem to be random. 

6) If you were to program this, what classes would you write?
I would have a inavder class and a rocket class.

7) If you were to program this, would you use an array for some parts? What kind of array? What would you be storing in it?
I would use a 2d array for the inavders since they are in a row x column format and each row has a different colored invader. 

