int diceSize;
int pipSize;
int roundCorners;
int dicePositionX;
int dicePositionY;
int margin;
int random;
void setup() {
  size(800, 800);
  frameRate(60);
}

void draw() {
  background(120);
  diceSize = 200;
  pipSize = diceSize / 5;
  dicePositionX = width/2 - (diceSize/2);
  dicePositionY = height/2 - (diceSize/2);
  roundCorners = diceSize / 4;
  margin = diceSize/10;
  
  fill(255,255,255);
  rect(dicePositionX, dicePositionY, diceSize, diceSize, roundCorners);
  
  fill(0,0,0);
  //Center Pip
  if (random == 1 || random == 3 || random == 5){
    ellipse(width/2, height/2, pipSize, pipSize);
  }
  
  //Pips: TopRight, BottomLeft, MiddleRight, MiddleLeft, BottomRight, TopLeft
  if (random >=2){
    ellipse(dicePositionX + margin + (pipSize/2), dicePositionY + margin + (pipSize/2), pipSize, pipSize);
    ellipse(dicePositionX+diceSize - margin - (pipSize/2), dicePositionY+diceSize - margin - (pipSize/2), pipSize, pipSize);
  }
  if (random == 6){
    ellipse(dicePositionX + margin + (pipSize/2), height/2, pipSize, pipSize);
    ellipse(dicePositionX+diceSize - margin - (pipSize/2), height/2, pipSize, pipSize);
   
  }
  if (random >=4 && random <= 6){
    ellipse(dicePositionX + margin + (pipSize/2), dicePositionY+diceSize - margin - (pipSize/2), pipSize, pipSize);
    ellipse(dicePositionX+diceSize - margin - (pipSize/2), dicePositionY + margin + (pipSize/2), pipSize, pipSize);
  }
  
  
  //Pips Left (Top, Middle, Bottom)
  
}

void mousePressed(){
   random = (int)random(1,7); 
   println(random);
}
