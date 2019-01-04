// Made by: Christian Tsalidis

// Possible future features of the game: making it 3D

Player player;
Obstacle[] obstacle = new Obstacle[6];
Level level;

int widthScreen = 1200;
int heightScreen = 800;

// game level
int _gameLevel = 1;

// player variables
float _playerX = widthScreen / 2, _playerY = heightScreen / 2 + 300, _playerWidth = 100, _playerHeight = 100, _playerSpeed = 20;
int _playerColor = #D83F3F;

// obstacles variables
float _obstacleWidth = random(50, 70);
float _obstacleHeight = random(50, 70);
float _obstacleX = random(0, widthScreen);
float _obstacleY = widthScreen - _obstacleWidth;
int _obstacleColor = int(random(0, 100));
float _obstacleSpeed = random(5, 20);

// true or false if pressing on keys
boolean left = false, right = false;

// score
int score = 0;

// value of the discount points when player hits obstacle
int discountPoints;

// to see if the game has started
boolean start = false;
boolean showStartButton = true;

void setup()
{
  size(1200, 800);
  
  // setting up the player
  player = new Player(_playerX, _playerY, _playerWidth, _playerHeight, _playerColor, _playerSpeed);
  
  // setting ip the levels
  level = new Level(_gameLevel, score, discountPoints, start, showStartButton);
  
  // setting up the obstacles
  for(int i=0; i< obstacle.length; i++)
  {
    obstacle[i] = new Obstacle(_obstacleX, _obstacleY, _obstacleWidth, _obstacleHeight, _obstacleColor, _obstacleSpeed); 
  }
}

void draw()
{
  
  background(#363BF5);
 
  smooth();
  
  if(start == false)
  {
    level.display();
  }
  
  
  if(start == true)
  {
    level.showStartButton = false;
    level.showInstructions = false;
    score++; // increase the score by one
    input();
    update();
  }
}

void input()
{
  // check if the user is pressing on the left or right keys to move the player
  if (keyPressed)
  {
      if(keyCode == LEFT)
      {
        left = true;
      }
      if(keyCode == RIGHT)
      {
        right = true;
      }
  }
  else
  {
    left = false;
    right = false;
  }

  player.move(left, right);
}


void update()
{
  // update obstacles and change levels
  // println(level.showObstacle[1]);
  for(int i = 0; i< obstacle.length; i = i+1)
  {     
      obstacle[i].display(); 
    
    if(obstacle[i].overlaps(player)) // if the obstacle is overlaping the player it means that they hit each other, and it discounts points
    {
      // println("Player collided with obstacle!!");
      if(score > 10)
      {
        score -= level.discountPoints;
      }
      else
      {
        score = 0;
      }
      
      background(#FF0000);
    }
  }
  
  level.update(score);
  
}
