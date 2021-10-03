float x = 100f;
float y = 100f;
boolean goRight = true;
boolean goLeft = false;
boolean goDown = false;
boolean goUp = false;
int speed = 5;

void setup() {
  size (800,800);
}


  
void draw() {
  //our variables:
  int innerRadius = 50;
  int outerRadius = 100;
  color innerColor = #91C1F0;
  color outerColor = #546C83;
  
  //setup the canvas:
  background (128);

  
  //draw outside of the UFO
  ellipseMode (RADIUS);
  stroke(0);
  strokeWeight(2);
  fill (outerColor);
  ellipse(x,y,outerRadius, outerRadius);
  noStroke();
  fill (0,255,255, 20);
  ellipse(x-5,y-5,outerRadius/1.1f, outerRadius/1.1f);
  
  //draw inside of the UFO
  stroke(0);
  fill (innerColor);
  ellipse(x,y,innerRadius, innerRadius);
  noStroke();
  fill (255,255,255, 80);
  ellipse(x-innerRadius/5,y-innerRadius/5,innerRadius/1.5f, innerRadius/1.5f);
  
  //Moving UFO around the canvas
  if(goRight){
   x+=speed;
   if(x>=width-100f){
     goRight = false;
     goDown = true;
   }
  }
  else if (goLeft){
   x-=speed;
   if (x<=100f){
    goLeft = false;; 
    goUp = true;
   }
  }

  if(goDown){
   y+=speed;
   if(y>=height-100f){
    goDown = false; 
    goLeft = true;
   }
  }
  else if(goUp){
    y-=speed;
    if (y <=100f){
     goUp = false;
     goRight = true;
    }
  }
}
