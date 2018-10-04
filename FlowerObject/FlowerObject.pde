Flower myFlower1;
Flower myFlower2;
Flower myFlower3;
Flower myFlower4;

int r=60; // radius of the petal


void setup()
{
  size(1600,1200);
  
    fill(0,250,0);
  //int numberOfPetals = 1000;
  // noStroke();
  int flowerColor = #FFA005;
  
  int _r1 = 60;
  int _petals = 5;
  int _x = width / 2;
  int _y = height / 2;
  int _pc = flowerColor;
  
  myFlower1 = new Flower(_r1, _petals, _x, _y, _pc);
  myFlower2 =new Flower(60,8,200,400,flowerColor);
  myFlower3 = new Flower(60,10,500,500,flowerColor / 2);
  myFlower4 = new Flower(25,4,350,350,flowerColor / 2);
  
  myFlower1 = new Flower(_r1, _petals, _x, _y, _pc, 5);
  
}

void draw()
{
   
   background(#43AF76);
  
  myFlower1.display();
  myFlower1.move();
  myFlower2.display();
  myFlower3.display();
  myFlower4.display();
}  
 

 
 
