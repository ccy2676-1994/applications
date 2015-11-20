// Snake_Game
// By: Coleman Yeaw
// A snake game created for my sonos application video


import java.util.*;

// sets the speed and initial coordinates
public int speed = 20;
public int x = speed;
public int y = speed;

// unimportant
// ToDo: Remove
public int part = 7;

// This keeps track of your score
public int score = 1;

// Movement booleans
public boolean moveUp, moveDown, moveRight, moveLeft, gameOver = false;
public boolean canMove = true;

// Boolean that keeps track of if you are auto drawing your s
public boolean drawS = false;

// An arrayList that holds all the parts to your snake
public ArrayList<snakePart> snakeList = new ArrayList();

// These arrays hold all the blocks for the Sono of sonos
public ArrayList<block> s1 = new ArrayList();
public ArrayList<block> o1 = new ArrayList();
public ArrayList<block> n = new ArrayList();
public ArrayList<block> o2 = new ArrayList();

// This is the food object
public food f = new food();

// This method runs once at startup
public void setup() {
  // Initializes gameBoard
  size(800, 800); 
  
  // Initializes the snake
  snakeList.add(new snakePart());
  snakeList.get(0).x = speed;
  snakeList.get(0).y = speed;
  snakeList.get(0).head = true;
  
  // Initializes Sonos
  // The S
  s1.add(new block(2,20));
  s1.add(new block(2,21));
  s1.add(new block(3,20));
  s1.add(new block(3,21));
  s1.add(new block(4,20));
  s1.add(new block(4,21));
  s1.add(new block(5,20));
  s1.add(new block(5,21));
  s1.add(new block(6,20));
  s1.add(new block(6,21));
  s1.add(new block(7,20));
  s1.add(new block(7,21));
  
  s1.add(new block(6,19));
  s1.add(new block(7,19));
  s1.add(new block(6,18));
  s1.add(new block(7,18));
  s1.add(new block(6,17));
  s1.add(new block(7,17));
  s1.add(new block(6,16));
  s1.add(new block(7,16));
  
  s1.add(new block(5,16));
  s1.add(new block(5,17));
  s1.add(new block(4,16));
  s1.add(new block(4,17));
  s1.add(new block(3,16));
  s1.add(new block(3,17));
  s1.add(new block(2,16));
  s1.add(new block(2,17));
  
  s1.add(new block(2,15));
  s1.add(new block(3,15));
  s1.add(new block(2,14));
  s1.add(new block(3,14));
  s1.add(new block(2,13));
  s1.add(new block(3,13));
  s1.add(new block(2,12));
  s1.add(new block(3,12));
  
  s1.add(new block(7,12));
  s1.add(new block(7,13));
  s1.add(new block(6,12));
  s1.add(new block(6,13));
  s1.add(new block(5,12));
  s1.add(new block(5,13));
  s1.add(new block(4,12));
  s1.add(new block(4,13));
  s1.add(new block(3,12));
  s1.add(new block(3,13));
  s1.add(new block(2,12));
  s1.add(new block(2,13));
  
  // Draws first o
  o1.add(new block(10,20));
  o1.add(new block(10,21));
  o1.add(new block(11,20));
  o1.add(new block(11,21));
  o1.add(new block(12,20));
  o1.add(new block(12,21));
  o1.add(new block(13,20));
  o1.add(new block(13,21));
  o1.add(new block(14,20));
  o1.add(new block(14,21));
  o1.add(new block(15,20));
  o1.add(new block(15,21));
  
  o1.add(new block(10,19));
  o1.add(new block(11,19));
  o1.add(new block(14,19));
  o1.add(new block(15,19));
  o1.add(new block(10,18));
  o1.add(new block(11,18));
  o1.add(new block(14,18));
  o1.add(new block(15,18));
  
  o1.add(new block(10,16));
  o1.add(new block(10,17));
  o1.add(new block(11,16));
  o1.add(new block(11,17));
  o1.add(new block(12,16));
  o1.add(new block(12,17));
  o1.add(new block(13,16));
  o1.add(new block(13,17));
  o1.add(new block(14,16));
  o1.add(new block(14,17));
  o1.add(new block(15,16));
  o1.add(new block(15,17));
  
  // Draws the n 
  n.add(new block(18,20));
  n.add(new block(18,21));
  n.add(new block(19,20));
  n.add(new block(19,21));
  
  n.add(new block(22,20));
  n.add(new block(22,21));
  n.add(new block(23,20));
  n.add(new block(23,21));
  
  n.add(new block(18,19));
  n.add(new block(19,19));
  n.add(new block(22,19));
  n.add(new block(23,19));
  n.add(new block(18,18));
  n.add(new block(19,18));
  n.add(new block(22,18));
  n.add(new block(23,18));
  
  n.add(new block(18,16));
  n.add(new block(18,17));
  n.add(new block(19,16));
  n.add(new block(19,17));
  n.add(new block(20,16));
  n.add(new block(20,17));
  n.add(new block(21,16));
  n.add(new block(21,17));
  n.add(new block(22,16));
  n.add(new block(22,17));
  n.add(new block(23,16));
  n.add(new block(23,17));
  
  // Draws second o
  o2.add(new block(26,20));
  o2.add(new block(26,21));
  o2.add(new block(27,20));
  o2.add(new block(27,21));
  o2.add(new block(28,20));
  o2.add(new block(28,21));
  o2.add(new block(29,20));
  o2.add(new block(29,21));
  o2.add(new block(30,20));
  o2.add(new block(30,21));
  o2.add(new block(31,20));
  o2.add(new block(31,21));
  
  o2.add(new block(26,19));
  o2.add(new block(27,19));
  o2.add(new block(30,19));
  o2.add(new block(31,19));
  o2.add(new block(26,18));
  o2.add(new block(27,18));
  o2.add(new block(30,18));
  o2.add(new block(31,18));
  
  o2.add(new block(26,16));
  o2.add(new block(26,17));
  o2.add(new block(27,16));
  o2.add(new block(27,17));
  o2.add(new block(28,16));
  o2.add(new block(28,17));
  o2.add(new block(29,16));
  o2.add(new block(29,17));
  o2.add(new block(30,16));
  o2.add(new block(30,17));
  o2.add(new block(31,16));
  o2.add(new block(31,17));
}

// This method handles the brunt of the program and acts as a while loop within a main statement
public void draw() {
  // only runs if the game state is not gameOver == true
  if (!gameOver) {
    background(255, 255, 255);

    // Draws the food
    f.drawFood();
    
    // Draws the snake
    snakeList.get(0).drawSnake();
    for (int i = snakeList.size()-1; i >= 1; i--) {
      snakeList.get(i).drawSnake();
    }
    
    
    // Writes the Score
    text("Score:" +score,20,790);
    
    // If the snake hits the food then it moves the food and adds a part to the end of the snake using the now second
    //  to last snakes Parts coordinates
    if (f.x == snakeList.get(0).x && f.y == snakeList.get(0).y) {
      snakeList.add(new snakePart(snakeList.get(snakeList.size()-1).x, snakeList.get(snakeList.size()-1).y));
      part--;
      f.newLocation();
    }
    
    // moves all the various snakeParts.  Must iterate backwards because otherwise all the parts would be on top of the had
    for (int i = snakeList.size()-1; i >= 1; i--) {
      snakeList.get(i).x = snakeList.get(i-1).x;
      snakeList.get(i).y = snakeList.get(i-1).y;
      snakeList.get(i).moveDir = snakeList.get(i-1).moveDir;
    }
    move();
    
    // Draws the blocks
    for(int i=0;i<s1.size();i++){
      s1.get(i).drawBlock(); 
    }
    for(int i=0;i<o1.size();i++){
      o1.get(i).drawBlock(); 
    }
    for(int i=0;i<n.size();i++){
      n.get(i).drawBlock(); 
    }
    for(int i=0;i<o2.size();i++){
      o2.get(i).drawBlock(); 
    }
    
    // This part emulates framerate.  There is a 66 millisecond delay between each frame
    try {
      Thread.sleep(66);
    }
    catch(Exception e) {
    }
  }
}

// This section is the controls of the game.  When a key is pressed it will change the boolean
//  of the coorisponding direction to true and all others to false.  You can not go in the opposite
//  direction of the current direction due to it causing you to crash into your own tail
public void keyPressed() {
  // Upwards direction
  if (key == 'w' && !moveDown && canMove) {
    moveUp = true;
    moveDown = false;
    moveLeft = false;
    moveRight = false;
    canMove = false;
    snakeList.get(0).moveDir = 1;
  }
  
  // Down
  if (key == 's' && !moveUp && canMove) {
    moveDown = true;
    moveUp = false;
    moveLeft = false;
    moveRight = false;
    canMove = false;
    snakeList.get(0).moveDir = 3;
  }
  
  //Left
  if (key == 'a' && !moveRight && canMove) {
    moveLeft = true;
    moveDown = false;
    moveUp = false;
    moveRight = false;
    canMove = false;
    snakeList.get(0).moveDir = 2;
  }
  
  //Right
  if (key == 'd' && !moveLeft && canMove) {
    moveRight = true;
    moveDown = false;
    moveLeft = false;
    moveUp = false;
    canMove = false;
    snakeList.get(0).moveDir = 4;
  }
  
  if(key == 'p'){
    drawS = true;
  }
}

public void keyReleased() {
}

// Tracks the progress of s
public int sProg = 0;
// This handles the movement of the head of the snake and sets the gameOver state to true if it runs into the edge of the board
public void move() {
  //This wil draw the last s
  if(drawS){
    if(sProg == 0){
      snakeList.get(0).x+=speed;
      if(snakeList.get(0).x == 34*20){
        sProg = 1;
      }
    }else if(sProg == 1){
      snakeList.get(0).y-=speed;
      if(snakeList.get(0).y == 21*20){
        sProg = 2;
      }
    }else if(sProg == 2){
      snakeList.get(0).x+=speed;
      if(snakeList.get(0).x == 38*20){
        sProg = 3;
      }
    }else if(sProg == 3){
      snakeList.get(0).y-=speed;
      if(snakeList.get(0).y == 19*20){
        sProg = 4;
      }
    }else if(sProg == 4){
      snakeList.get(0).x-=speed;
      if(snakeList.get(0).x == 34*20){
        sProg = 5;
      }
    }else if(sProg == 5){
      snakeList.get(0).y-=speed;
      if(snakeList.get(0).y == 16*20){
        sProg = 6;
      }
    }
    else if(sProg == 6){
      snakeList.get(0).x+=speed;
      //Triggers gameOver state when it finishs the s
      if(snakeList.get(0).x == 39*20){
        gameOver = true;
        textSize(30);
        text("Snake Game Sonos ver. by Coleman Yeaw",120,540);
        text("Source Code: tinyurl.com/sonosSnake",130,580);
      }
    }
  }else{
    if (moveUp) {
      snakeList.get(0).y-=speed;
    }
    if (moveDown) {
      snakeList.get(0).y+=speed;
    }
    if (moveLeft) {
      snakeList.get(0).x-=speed;
    }
    if (moveRight) {
      snakeList.get(0).x+=speed;
    }
    canMove = true;  
    if (snakeList.get(0).x < 0 || snakeList.get(0).x > 800 - speed || snakeList.get(0).y < 0 || snakeList.get(0).y > 800 - speed) {
      gameOver = true;
    }
  }
}

// This class is a representation of each indivisual snakePart
public class snakePart {
  // Coordinates of the snakePart
  public int x;
  public int y;
  
  //unused variable
  public int partNum;
  
  // If this part is the head
  public boolean head = false;
  
  // The direction that this part is moving.  1 == up, 2==left, 3==down, 4==right
  public int moveDir = 0;

  public snakePart() {
  }
  
  // This constructor takes two coordinates and puts them in the correct place corrisponding to the rest of the snake
  // Args: int x1: the x coordinate of the part in front of it
  //       int y1: the y coordinate of the poart in front of it
  public snakePart(int x1, int y1) {
    if (moveUp) {
      x = x1;
      y = y1 + speed;
      moveDir = 1;
    } else if (moveDown) {
      x = x1;
      y = y1 - speed;
      moveDir = 3;
    } else if (moveLeft) {
      x = x1 + speed;
      y = y1; 
      moveDir = 2;
    } else if (moveRight) {
      x = x1 - speed;
      y = y1; 
      moveDir = 4;
    }
    partNum = part;
  }

  // This method will draw the snake
  public void drawSnake() {
    fill(255, 255, 255);
    rect(x, y, speed, speed); 
    fill(0, 0, 0);
    
    //This is unused code that seemed like a fun idea but I had trouble getting the kerning correct
    //textSize(18);
    
    // This handles the gameOver condition of if you ever it your own tail while moving
    if (x == snakeList.get(0).x && y == snakeList.get(0).y && !head) {
      gameOver = true;
    }
  }
}

// This class if the food object which will jump around whenever eaten
public class food {
  
  // Coordinates of the food
  public int x;
  public int y;

  // When a new food object is created it will be set to a random location
  public food() {
    Random rand = new Random();
    
    // Its set its to a variable between 1~38  * 20 so it will be within the board and conform to the grid pattern
    x = rand.nextInt(37)+1;
    y = rand.nextInt(37)+1;
    
    // If the generated value is intersecting with blocks it will generate a new value till it doesn't
    while((x>=2 && x<=7 && y>=10 && y<=21) || (x>=10 && x<=15 && y<=21 && y>=16) || (x>=18 && x<=23 && y<=21 && y>=16) || (x>=26 && x<=31 && y<=21 && y>=16)){
      x = rand.nextInt(37)+1;
      y = rand.nextInt(37)+1;
    }
    x*=20;
    y*=20;
  }

  // This method draws the food
  public void drawFood() {
    fill(0, 255, 0);
    rect(x, y, 20, 20);
  }

  // This method will move the food to a new location using the same equation as in the constructor
  public void newLocation() {
    score++;
    Random rand = new Random();
    x = rand.nextInt(37)+1;
    y = rand.nextInt(37)+1;
    while((x>=2 && x<=7 && y>=10 && y<=21) || (x>=10 && x<=15 && y<=21 && y>=16) || (x>=18 && x<=23 && y<=21 && y>=16) || (x>=26 && x<=31 && y<=21 && y>=16)){
      x = rand.nextInt(37)+1;
      y = rand.nextInt(37)+1;
    }
    x*=20;
    y*=20;
  }
}

// This class is a class of immovable blocks to create obsticles
public class block {
  public int x;
  public int y;

  // Constructor for block
  // Args: int a: Gets multiplied by 20 to get x position
  //       int b: Gets multiplied by 20 to get y position
  public block(int a, int b) {
    x = a*20;
    y = b*20;
  }
  
  // This method draws the block, sets gameOver if touching the head of the snake
  public  void drawBlock(){
    fill(0,0,0);
    rect(x,y,20,20); 
    if(snakeList.get(0).x == x && snakeList.get(0).y == y){
      gameOver = true;
    }
  }
}