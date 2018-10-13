Flower myFlower1;
Flower myFlower2;
Flower myFlower3;
Flower myFlower4;

Flower[] flowersArray = new Flower[12]; // an array of flowers
boolean[] show = {false, false, false, false, false,  false, false, false, false, false, false, false}; // to check if the flowers should be displayed or not
  
  int[] count = {0,1,2,3,4,5,6,7,8,9,10,11};
  int index = 0;
  int aux0 = 0;
  int aux1 = 0;
  int aux2 = 0;
  int xHitbox0 = 0;
  int yHitbox0 = 0;
  int xHitbox1 = 200;
  int yHitbox1 = 0;
  int xHitbox2 = 400;
  int yHitbox2 = 0;

void setup()
{
  size(1600,1000);
  
  // fill(0,250,0);
  int flowerColor = #FFA005;
  
  int _r1 = 60;
  int _petals = 5;
  int _x = width / 2;
  int _y = height / 2;
  int _pc = flowerColor;
  
  
  int _xSpeed = 3; // extra parameter for the constructor of class Flower
  int _ySpeed = 3;
  int _xDirection = 1;
  int _yDirection = 1;

  
  // turn on
  rect(xHitbox0, yHitbox0, 200, 200);
  rect(xHitbox1, yHitbox1, 200, 200);
  rect(xHitbox2, yHitbox2, 200, 200);
  
  // myFlower1 = new Flower(_r1, _petals, _x, _y, _pc); 
  // myFlower2 =new Flower(_r1, _petals, _x + random(-100, 100), _y, _pc);
  // myFlower3 = new Flower(_r1 -25, _petals +3, _x - 200,_y - 200,flowerColor / 3);
  // myFlower4 = new Flower(_r1 + 50, _petals +3, _x + 500,_y - 200,flowerColor / 4);
  
  // myFlower1 = new Flower(_r1, _petals, _x, _y, _pc, _xSpeed, _ySpeed, _xDirection, _yDirection); // overloading, this time the flower also has speed
  
  flowersArray[0] = new Flower(_r1, _petals, _x, _y, _pc, _xSpeed, _ySpeed, _xDirection, _yDirection); // overloading, this time the flower also has speed
  flowersArray[1] = new Flower(_r1, _petals, _x + 200, _y, _pc / 3, _xSpeed, _ySpeed, _xDirection, _yDirection); // overloading, this time the flower also has speed
  flowersArray[2] = new Flower(_r1, _petals, _x - 200, _y, _pc / 5, _xSpeed, _ySpeed, _xDirection, _yDirection); // overloading, this time the flower also has speed
  flowersArray[3] = new Flower(_r1, _petals, _x, _y, _pc, _xSpeed + 1, _ySpeed + 1, _xDirection, _yDirection);
  flowersArray[4] = new Flower(_r1, _petals, _x + 200, _y, _pc / 3, _xSpeed + 2, _ySpeed + 2, _xDirection, _yDirection);
  flowersArray[5] = new Flower(_r1, _petals, _x + 200, _y, _pc / 5, _xSpeed + 3, _ySpeed + 3, _xDirection, _yDirection);
  flowersArray[6] = new Flower(_r1, _petals, _x + 200, _y, _pc, _xSpeed + 4, _ySpeed + 4, _xDirection, _yDirection);
  flowersArray[7] = new Flower(_r1, _petals, _x + 200, _y, _pc / 3, _xSpeed + 5, _ySpeed + 5, _xDirection, _yDirection);
  flowersArray[8] = new Flower(_r1, _petals, _x + 200, _y, _pc / 5, _xSpeed + 6, _ySpeed + 6, _xDirection, _yDirection);
  flowersArray[9] = new Flower(_r1, _petals, _x + 200, _y, _pc, _xSpeed + 7, _ySpeed + 7, _xDirection, _yDirection);
  flowersArray[10] = new Flower(_r1, _petals, _x + 200, _y, _pc / 3, _xSpeed + 8, _ySpeed + 8, _xDirection, _yDirection);
  flowersArray[11] = new Flower(_r1, _petals, _x + 200, _y, _pc / 5, _xSpeed + 9, _ySpeed + 9, _xDirection, _yDirection);
  
 // flowersArray[0] = new Flower(_r1, _petals, _x, _y, _pc, _xSpeed, _ySpeed, _xDirection, _yDirection); // overloading, this time the flower also has speed
 
 // flowersArray = new Flower[10];
 
 println(flowersArray.length);
  
}

void draw()
{
 // background(#43AF76);
  
  if(mouseX < 200 && mouseY < 200)
  {
    
    fill(0,250,0);
    rect(xHitbox0, yHitbox0, 200, 200);
    show[0] = true;

    if(aux0 < 3)
    {
      aux0 += 1;
    }
    
    if(aux0 == 0)
    {
      show[0] = true;
    }
    if(aux0 == 1)
    {
      show[3] = true;
    }
    if(aux0 == 2)
    {
      show[6] = true;
    }
    if(aux0 == 3)
    {
      show[9] = true;
    }
    
  }
  if(mouseX > 200 && mouseX < 400 && mouseY < 200)
  {
    fill(0,250,0);
    rect(xHitbox1, yHitbox1, 200, 200);
    show[1] = true;

    if(aux1 < 3)
    {
      aux1 += 1;
    }
    if(aux1 == 0)
    {
      show[1] = true;
    }
    if(aux1 == 1)
    {
      show[4] = true;
    }
    if(aux1 == 2)
    {
      show[7] = true;
    }
    if(aux1 == 3)
    {
      show[10] = true;
    }
  }
  if(mouseX > 400 && mouseX < 600 && mouseY < 200)
  {
    
    fill(0,250,0);
    rect(xHitbox2, yHitbox2, 200, 200);
   // showRectangles();
    show[2] = true;
    
    if(aux2 < 4)
    {
      aux2 += 1;
    }
    if(aux2 == 0)
    {
      show[2] = true;
    }
    if(aux2 == 1)
    {
      show[5] = true;
    }
    if(aux2 == 2)
    {
      show[8] = true;
    }
    if(aux2 == 3)
    {
      show[11] = true;
    }
    
  }
  
  
  for(int i=0; i < flowersArray.length; i++)
  {
    if(show[i] == true)
    {
      flowersArray[i].display();
    }
  }
  
}
