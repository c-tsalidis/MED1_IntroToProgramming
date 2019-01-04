// A spiral with Perlin noise, painted blue

float theta = 0; // angle
float r = 25; // radius

void setup()
{ 
  size(1600, 800);
  background(255);
}
void draw()
{
  frameRate(500);
  spiral();
}

void spiral()
{
  float noiseScale = noise(r) * 30;
  float x = r * cos(theta);
  float y = r * sin(theta);  
  fill(cos(theta*100), cos(theta)*200, 200);
  noStroke();
  ellipse(x + width / 2, y + height / 2, noiseScale, noiseScale);
  theta += 0.01;
  r += 0.05;
}


// Notes:

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
float b;
 
 void draw()
 {
 
 b = color(0, random(100, 255), 0);
 
 // frameRate(1000);
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
 // a is 57.0
 // b is 0.20555556
 // c is 60.36111
 
 float result = map(a, oldLow, oldHigh, newLow, newHigh);
 println("Using the built-in map function: " + result);
 }
 */
