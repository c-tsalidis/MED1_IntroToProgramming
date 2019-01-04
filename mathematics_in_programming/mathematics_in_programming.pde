

/*
Modulo in programming
if i > 4, i = 1     is the same as writing i = (i+1)%4

*/

/*

Random number generators
If we give the same seed, we will get the same random number

Random() -> Random gives the numbers more separate
noise() -> Noise with perlin gives closer numbers, achieving a wave-like


*/



/*

The map function has a value between a certain interval, and then returns the same value but in a new interval

map(value, oldLow, oldHigh, newLow, newHigh);

*/


/*

SHE IS GOING TO ASK HOW THE MAP FUNCTION WORKS



*/



float theta = 0;
float r = 75; // radius

void setup()
{
  
  size(1600, 800);
  background(100);
  
  
 // spiral();


}


float b;

void draw()
{
  
   b = color(0, random(100, 255), 0);
  
  frameRate(1000);
    spiral();
  
}

void howMapFunctionWorks()
{
  
  float a, b, c;

  a = 57;
  
  float oldLow = 20, oldHigh = 200, newLow = 10, newHigh = 255;
  
  println("a is " + a);
  
  b = (a - oldLow) / (oldHigh - oldLow);
  println("b is " + b);
  
  c = newLow + b * (newHigh - newLow);
  println("c is " + c);
  
  
  // this results in 
  /*
  a is 57.0
  b is 0.20555556
  c is 60.36111

  */
  
  float result = map(a, oldLow, oldHigh, newLow, newHigh);
  println("Using the built-in map function: " + result);
}



void spiral()
{
  
// fill(b, 100);
  
  float numberOfPoints = 36; // 1 every 10 degrees
  // float theta = (2 * PI) / numberOfPoints;

  // float theta = (2 * PI);

  

  float x; // x coordinate
  float y; // y coordinate

  

 // for(int i = 0; i < numberOfPoints; i++)
 // {
    x = r * cos(theta);
    y = r * sin(theta);  
    
   // r = r / numberOfPoints;
    theta += 0.01;
    r += 0.05;
    
    ellipse(x + width / 2, y + height / 2, 16, 16);
  // }
  

}


// Homework
/*

*/
