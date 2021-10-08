color green = color(0,255,0);
int aliensNumber = 50;
int alienSize = 80;
PImage img;
Alien[] aliens = new Alien[aliensNumber];

void setup(){
  size(800,600,P2D);
  surface.setResizable(true);
  img = loadImage("alienImage.png");
  for(int i = 1; i <= aliens.length; i++){
    aliens[i-1] = new Alien((int)random(0+alienSize/2, width-alienSize/2), -10, alienSize, green);
  }
}

void draw(){
  background(0); 
  for(int i = 0; i < aliens.length; i++){
    aliens[i].drawAlien(img);
    aliens[i].moveAlien();
  }
}
