PImage lightBulbOff;
PImage lightBulbOn;

void setup () {
  size(800, 800);

  lightBulbOff = loadImage ("lightbulb_off.png");
  lightBulbOn = loadImage ("lightbulb_on.png");
}

void draw() 
{
  background(128);
  imageMode (CENTER);

  if (mousePressed) {
    image (lightBulbOn, width/2, height/2);
  } else {
    image (lightBulbOff, width/2, height/2);
  }
}
