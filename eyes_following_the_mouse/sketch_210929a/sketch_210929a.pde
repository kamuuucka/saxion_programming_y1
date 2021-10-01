void setup() {
  size(600, 800);
}

int circleX = 200;
int circleY = 400;
int circleX2 = 400;
void draw() {
  background(0);
  
  fill(255,255,255);
  ellipse(200,400,200,200);
  ellipse(400,400,200,200);
  
  if(mouseX < 300 && circleX >= 150 && circleX2 >= 350){
    circleX--;
    circleX2--;
  }
  if(mouseX > 200 && circleX <= 250 && circleX2 <= 550) {
    circleX++;
    circleX2++;
  }
  if(mouseY < 400 && circleY >= 400 - 50) circleY--;
  if(mouseY > 400 && circleY <= 400 +50) circleY++;

  fill(255,0,0);
  ellipse(circleX, circleY, 50, 50);
  ellipse(circleX2, circleY, 50, 50);
}
