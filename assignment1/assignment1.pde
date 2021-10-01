void setup(){
  size(1200,800);
  frameRate(60);
  println(frameRate);
}

void draw(){
  background(255);
  //if you want to add/change something just replace mouse with start
  //int startX = width/2;
  //int startY = height/2;
  //body
  fill(0,0,0);
  rect(mouseX-40,mouseY-110,80,160,40,40,0,0);
  fill(255,255,255);
  rect(mouseX-20, mouseY-50, 40,100,40,40,0,0);
  //hands r & l
  fill(0,0,0);
  rect(mouseX-50,mouseY-50,10,70,20,0,20,20);
  rect(mouseX+40,mouseY-50,10,70,0,20,20,20);
  //eyes
  fill(255,255,255);
  ellipse(mouseX-2,mouseY-86,10,15);
  ellipse(mouseX+10,mouseY-86,10,15);
  //peak
  fill(227,177,79);
  triangle(mouseX, mouseY-75, mouseX + 31, mouseY - 65, mouseX, mouseY - 50);
  //feet
  fill(227,177,79);
  rect(mouseX+15,mouseY+50,30,20);
  rect(mouseX-30,mouseY+50,30,20);
}
