float x= 800;
PImage Charm;
PImage YOUWIN; 
PImage YOULOSE; 
float y= 800;
int yo= 85;
int xo= 20;
color bgColor;
color c;
color r;
color g;
color b;
int e= 3;
int randomv = (int)random (1-5);
int BLOCK_COUNT = 10;
float [] Xs = new float[BLOCK_COUNT];
float [] Ys = new float [BLOCK_COUNT];
String s = "CONGRATS U WON";

void setup()
{
  size (800,800);
  bgColor = color(150,150,150);
  Charm = loadImage("Charm.png"); 
  
  for (int i = 0; i < BLOCK_COUNT; i++)
  {
  } 
  for (int i = 0; i < 10; i++)
  {
    Xs[i] = random(width);
    Ys[i] = random(height);
  }

  YOUWIN= loadImage("WIN.jpg"); 
  YOULOSE= loadImage("LOSE.jpg"); 
}

void draw()
{
  
  background(bgColor);
  imageMode(CENTER);   
 


imageMode(CENTER);
  image(Charm, xo, yo, 50, 50);
  //ellipse (xo,yo,10,10);
  
  color c =get(xo, yo); 
  println(red(c), green(c), blue(c));
  

   for (int i =0; i < BLOCK_COUNT; i++)
  {
    rect(Xs[i], Ys[i], 30, 20);
    Ys[i] = Ys[i]+3; 
    fill(0,0,255); 
    if (Ys[i]>height)
    {
      Ys[i]=0;
    }
    
    fill(255,0,0); 
rect(width-100,0,100,height-1); 
fill(0,0,255); 
    
  } 
  
  if (blue(get(xo, yo)) > 150) 
  {
    background(255,0,255);
    yo = 100;
    xo = 20; 
   
  }
  
    if (red(get(xo, yo)) < 150) 
  {
     background(150,200,0); 
     String s = "CONGRATS U WON!";
     fill(50);
     text(s, 10, 10, 70, 80); 
  }
  
 
}

 void keyPressed()
{
  if (key == 'w')
  {
    yo = yo -10;
  }

  if (key == 'a')
  {
    xo = xo- 10;
  }
  if (key == 'd')
  {
    xo= xo+ 10;
  }

  if (key == 's')
  {
    yo = yo + 10;
  }


}