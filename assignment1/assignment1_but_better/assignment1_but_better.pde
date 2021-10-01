

void setup(){
  size(1200,800);
  frameRate(60);
  println(frameRate);
}
//if you want to add/change something just replace start with start
int startX = 200;
int startY = 200;
boolean positionSideway = true;
boolean positionUp = true;

void draw(){
  
  if ((startX > -50 && startX < width-50 && positionSideway)|| (startX<50 && !positionSideway)){
    startX = startX+2;
    positionSideway = true;
  }
  else {
    startX = startX-2;
    positionSideway=false;
  }
  
  if ((startY > -100 && startY < height-70 && positionUp)|| (startY<100 && !positionUp)){
    startY = startY+3;
    positionUp = true;
  }
  else {
    startY = startY-3;
    positionUp = false;
  }
  background(255);
  drawPenguin();
}

void drawPenguin(){
//body
  fill(0,0,0);
  rect(startX-40,startY-110,80,160,40,40,0,0);
  fill(255,255,255);
  rect(startX-20, startY-50, 40,100,40,40,0,0);
  //hands r & l
  fill(0,0,0);
  rect(startX-50,startY-50,10,70,20,0,20,20);
  rect(startX+40,startY-50,10,70,0,20,20,20);
  //eyes
  fill(255,255,255);
  ellipse(startX-2,startY-86,10,15);
  ellipse(startX+10,startY-86,10,15);
  //peak
  fill(227,177,79);
  triangle(startX, startY-75, startX + 31, startY - 65, startX, startY - 50);
  //feet
  fill(227,177,79);
  rect(startX+15,startY+50,30,20);
  rect(startX-30,startY+50,30,20);
}
