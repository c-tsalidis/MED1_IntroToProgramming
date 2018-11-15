class Particle
{
  // variables
  float size; // width and height of the particle
  int x; // x position of the particle
  int y; // y position of the particle
  float particleColor; // color of the particle
  
  float r;
  float g;
  float b;
  
  
  // Constructor
  Particle(int temp_x, int temp_y, float temp_size, float temp_r, float temp_g, float temp_b)
  {
    x = temp_x;
    y = temp_y;
    size = temp_size;
    // particleColor = temp_r;
    r = temp_r;
    g = temp_g;
    b = temp_b;
  }
  
  
  void display()
  {

    noStroke();
    fill(r, g, b, 100);
    ellipse(x, y, size, size);
    ellipse(x+size, y, size, size);
    ellipse(x-size, y, size, size);
    ellipse(x, y+size, size, size);
    ellipse(x, y-size, size, size);
  }
  
}
