int positionX = 20;
int positionY = 200;
int s;
int m;
int h;

void setup() {
  size(400, 400);
}

void draw() {
  background(0);
  s = second();
  m = minute();
  h = hour();
  //makes the starting point of rectangle in its middle, not on the corner
  rectMode(CENTER);
  translate(width/2, height/2);

  for (int i = 0; i < 12; i++) {
    //Every 3 I want them to be thicker
    if (i%3==0){
      rect(width/3+10, 0, 40, 24);
    }
    else {
      rect(width/3+10,0,30,8); 
    }
    
    //PI is half of the circle
    rotate(PI * 2 / 12);
  }
  
  ellipseMode(CENTER);
  ellipse(0,0,30,30);
  
}
