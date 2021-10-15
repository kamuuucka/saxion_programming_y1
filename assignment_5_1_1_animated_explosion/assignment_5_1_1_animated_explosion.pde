PImage spriteSheet;
Animation animation;
boolean isAnimating = false;
int x;
int y;


//all this code is fine for now, you don't have to change anything

void setup () {
   size (800,800);
   spriteSheet = loadImage ("booom.png");
   animation = new Animation (spriteSheet, 8, 8);

}

void draw() {
  background (0);
  if (!isAnimating){
    x = mouseX;
    y = mouseY;
    
  }
  animation.next();
  println("CURRENT: " + animation.current);
  animation.draw(x-64, y-100);
}

void mouseClicked(){ 
  animation.mouseClicked();
  isAnimating = true;
}
