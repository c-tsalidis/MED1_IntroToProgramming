class Flower
{
  
  float r; // radius of the flower petal
  int n_petals; // number of petals
  float x; // x position of the center of the flower
  float y; // y position of the center of the flower
  int petalColor; // hexadecimal number for the color of the petals
  int speed; // speed of the flower
  
  Flower(float temp_r, int temp_n_petals, float temp_x, float temp_y, int temp_petalColor) // constructor
  {
    r = temp_r;
    n_petals = temp_n_petals;
    x = temp_x;
    y = temp_y;
    petalColor = temp_petalColor;
  }
  
   Flower(float temp_r, int temp_n_petals, float temp_x, float temp_y, int temp_petalColor, int speed_object) // constructor overloading
  {
    // this is called overloading, which is, in this example, the same as the other flower, but that flower was static, and I want this one to have speed 
    r = temp_r;
    n_petals = temp_n_petals;
    x = temp_x;
    y = temp_y;
    petalColor = temp_petalColor;
    speed = speed_object;
  }
  
  
  void display()
{
  float ballX; // x position of the petal center
  float ballY; // y position of the petal center
  
  fill(petalColor);
   for (float i=0;i<PI*2;i+=2*PI/n_petals) // trigonometry
  {
    ballX= x + r*cos(i); // this will give us the coordinate position of x by calculating the radius times the cos(angle)
    ballY= y + r*sin(i);  // this will give us the coordinate position of y by calculating the radius times the sin(angle)
    ellipse(ballX,ballY,r,r); 
  }
  fill(0,0,250);
  ellipse(x,y,r*1.2,r*1.2);
}

void move()
{
  // move down
  if( y < height)
  {
    y += speed;
  }
  // move up
  if(y > height)
  {
    y -= speed;
  }
}
}
