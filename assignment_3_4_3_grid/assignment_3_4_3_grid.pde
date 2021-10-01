int gridSize = 8;
int y = 0;
int x = 0;
int line = 1;
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

  fill(255);
  for (int i = 0; i <= (width/sizeX) * (height/sizeY); i++) {
    //println("i: " + i + "\nwidth: " + width/sizeX);
    println(x);
    println(y);
    println(" ");
    rect(x*sizeX, y*sizeY, sizeX, sizeY);
    if (i == (width/sizeX) * line) {
      y++;
      line++;
    }
    if (i%gridSize!=0) {
      x++;
    } else {
      x = 0;
    }
  }
  noLoop();
}
