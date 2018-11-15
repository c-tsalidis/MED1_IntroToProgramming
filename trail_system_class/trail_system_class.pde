// Algorithms


int num = 75;
int[] x = new int[num];
int[] y = new int[num];

Particle[] particle = new Particle[num];

int indexPosition = 0;

int[] sizes = new int[num];
int size = 75;

float randomSize = random(25, 75);
float _particleColor = random(255);

int r;
int g;
int b;


void setup()
{
  size(1000, 1000);
}
/*
void draw()
 {
 x[0] = mouseX;
 y[0] = mouseY;
 
 background(0);
 for (int i=num - 1;i > 0;i--)
 {
 
 x[i] = x[i-1];
 y[i] = y[i-1];
 ellipse(x[i], y[i], 25, 25);
 }
 }
 */

void draw()
{

  float _size = _particleColor;
  indexPosition += 1;

  background(0);

  // fill(random(100, 255), 100);

  // same as using modulo %

  if (indexPosition == num - 1)
  {
    indexPosition = 0;
  }



  x[indexPosition] = mouseX;
  y[indexPosition] = mouseY;


  for (int i = 0; i < num; i++)
  {
    sizes[i]++;
    if((i % 3) == 0)
    {
      _particleColor = #FF0000;
    }
    if((i % 3) == 1)
    {
      _particleColor = #00FF00;
    }
    if((i % 3) == 2)
    {
      _particleColor = #0000FF;
    }
    else
    {
      _particleColor = 255;
    }
    particle[i] = new Particle(x[i], y[i], random(25, 75), random(255), random(255), random(255));
  }
  /*
  for(int i =0; i< sizes.length - 1; i++)
   {
   if( i % num == 0)
   {
   i = 0;
   }
   sizes[i + 1] = size - 1;
   sizes[i] = size - i;
   }
   */
  for (int i = 0; i < num - 1; i++)
  {
    int pos = indexPosition + i;
    // ellipse(x[i], y[i], randomSize, randomSize);
    //ellipse(x[i], y[i], sizes[i], sizes[i]);
    // ellipse(x[pos], y[pos], size, size);

    particle[i].display();
  }
}
