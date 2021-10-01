int gridSize = 8;
void setup() {
  size(800, 800);
  frameRate(60);
}

void draw() {
  background(255);

  int sizeX = width/gridSize;
  int sizeY = height/gridSize;

  //for (int i = 0; i < width; i+= sizeX) {
  //  for (int j = 0; j < height; j+= sizeY) {
  //    fill(i,j,0);
  //    rect(i, j, sizeX, sizeY);
  //  }
  //}

  int y = 0;
  fill(255);
  for (int i = 0; i <= (width/sizeX) * (height/sizeY); i++) {
    if (i == width/sizeX) {
      y++;
      println(width/sizeX);
    }
    rect(i*sizeX, y*sizeY, sizeX, sizeY);
    println(i);
    println(y);
  }
  noLoop();
}
