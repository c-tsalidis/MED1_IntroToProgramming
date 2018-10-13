class Flower
{
  
  float r; // radius of the flower petal
  int n_petals; // number of petals
  float x; // x position of the center of the flower
  float y; // y position of the center of the flower
  int petalColor; // hexadecimal number for the color of the petals
  int xSpeed; // x speed of the flower
  int ySpeed; // y speed of the flower
  int xDirection; // x direction of the flower
  int yDirection; // y direction of the flower
  
  Flower(float temp_r, int temp_n_petals, float temp_x, float temp_y, int temp_petalColor) // constructor
  {
    r = temp_r;
    n_petals = temp_n_petals;
    x = temp_x;
    y = temp_y;
    petalColor = temp_petalColor;
  }
  
   Flower(float temp_r, int temp_n_petals, float temp_x, float temp_y, int temp_petalColor, int x_speed_object, int y_speed_object, int x_direction_object, int y_direction_object) // constructor overloading
  {
    // this is called overloading, which is, in this example, the same as the other flower, but that flower was static, and I want this one to have speed, so I add a parameter 
    r = temp_r;
    n_petals = temp_n_petals;
    x = temp_x;
    y = temp_y;
    petalColor = temp_petalColor;
    xSpeed = x_speed_object; // the parameter speed is what's overloading the constuctor, as it is an extra parameter
    ySpeed = y_speed_object;
    xDirection = x_direction_object;
    yDirection = y_direction_object;
}
  
  // display the flower
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
    fill(0,100,250);
    ellipse(x,y,r*1.2,r*1.2);
    
    bounce(); // to check whether or not it exceeds the boundaries of the screen and move it accordingly
    
  }
 
  
  void bounce() // checks the flower coordinates and if it's in the borders, then it will bounce it
  {
    
    
    // Test to see if the shape exceeds the boundaries of the screen
    // If it does, reverse its direction by multiplying by -1
    if (x > width-r || x < r) {
      xDirection *= -1;
    }
    if (y > height-r || y < r) {
      yDirection *= -1;
    }
    move(); // to move the object
  }
  
  // move the flower
  // void move(float value) 
  void move() // moves the flower
  {
    x = x + ( xSpeed  * xDirection);
    y = y + ( ySpeed  * yDirection);
    // y += speed * value;
   // x += speed * value;
  }
  
}
