class Player
{
  //variables of the Player class
  
  float x; // x position of the player
  float y; // y position of the player
  float playerWidth; // width of the player
  float playerHeight; // height of the player
  int playerColor; // hexadecimal number of the player's color
  float speed; // speed of the player
  
  // constructor
  
  Player(float player_x, float player_y, float player_width, float player_height, int player_color, float player_speed)
  {
    x = player_x;
    y = player_y;
    playerWidth = player_width;
    playerHeight = player_height;
    playerColor = player_color;
    speed = player_speed;
  }
  
  void display()
  {
    noStroke();
    fill(playerColor);
    ellipse(x, y, playerWidth, playerHeight);
  }
  
  void move(boolean left, boolean right)
  {
    if(left)
    {
      if(borders() == false)
      {
        x -= speed;
      }
    }
    if(right)
    {
      if(borders() == false)
      {
        x += speed;
      }
    }
    display();
  }
  
  boolean borders()
  {
    if(x < -playerWidth)
    {
      x += width;
      return true;
    }
    else if(x > width + playerWidth / 2)
    {
      x -= width;
      return true;
    }
    else
    {
      return false;
    }
  }
  
}
