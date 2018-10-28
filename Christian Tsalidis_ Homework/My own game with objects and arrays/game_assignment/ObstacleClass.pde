class Obstacle
{
  // variables of the obstacle
  float x; // x position of the obstacle
  float y; // y position of the obstacle
  float obstacleWidth; // width of the obstacle
  float obstacleHeight; // height of the obstacle
  int obstacleColor; // hexadecimal number of the obstacle's color
  float speed; // speed of the obstacle
  
  // Constructor
  Obstacle(float obstacle_x, float obstacle_y, float obstacle_width, float obstacle_height, int obstacle_color, float obstacle_speed)
  {
    x = obstacle_x;
    y = obstacle_y;
    obstacleWidth = obstacle_width;
    obstacleHeight = obstacle_height;
    obstacleColor = obstacle_color;
    speed = obstacle_speed;
  }
  
  void display()
  {
    stroke(2);
    fill(obstacleColor);
    ellipse(x, y, obstacleWidth, obstacleHeight);
    move();
    reappear();
  }
  
  void move()
  {
    y += speed;
  }
  
  void reappear()
  {
    if(y > height)
    {
      y = -obstacleHeight; // so that it reappears in the top of the screen
      x = random(0, width); // so that it starts at different positions
      obstacleWidth = random(50, 70);
      obstacleHeight = random(50, 70);
      speed = random(5, 20);
      obstacleColor = int(random(0, 100));
    }
  }
  
  // boolean overlaps(float playerX, float playerY, float playerWidth, float playerHeight)
  boolean overlaps(Player player)
  {
    if(dist(player.x, player.y, x, y) < player.playerWidth || dist(player.x, player.y, x, y) < player.playerHeight)
    {
      return true;
    }
    else
    {
      return false;
    }
  }
  
}
