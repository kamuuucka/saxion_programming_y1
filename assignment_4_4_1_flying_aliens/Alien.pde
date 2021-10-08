
class Alien {
  int size;
  int x;
  int y;
  color alienColor;
  
  Alien(int x, int y, int size, int alienColor) {
    this.x = x;
    this.y = y;
    this.size = size;
    this.alienColor = alienColor;
  }

  void drawAlien(PImage img) {
    //ellipseMode(CENTER);
    //fill(alienColor);
    //ellipse(x, y, size, size);
    imageMode(CENTER);
    image(img, x,y,size,size);
  }

  void moveAlien() {
    if (((mouseX > x - size/2 && mouseX < x + size/2) && (mouseY > y-size/2  && mouseY < y + size/2) && mousePressed) || y >= height) {
      //println("ALIEN");
      x = (int)random(size/2, width - size/2); 
      y = -10;
    } else {
      y++;
    }
  }
}
