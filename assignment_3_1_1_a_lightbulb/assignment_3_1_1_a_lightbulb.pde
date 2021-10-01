PImage lightBulbOff;
PImage lightBulbOn;
boolean lightOn = false;

void setup () {
  size(800, 800);

  lightBulbOff = loadImage ("lightbulb_off.png");
  lightBulbOn = loadImage ("lightbulb_on.png");
}

void draw() 
{
  background(128);
  imageMode (CENTER);
  
  //if (lightOn){
  //  image (lightBulbOn, width/2, height/2);
  //} else {
  //  image (lightBulbOff, width/2, height/2);
  //}
  
  image (lightOn ? lightBulbOn : lightBulbOff, width/2, height/2);
}

void keyPressed(){
  //if (!lightOn) {
  //  lightOn = true;
  //} else {
  //  lightOn = false;
  //}
  
  lightOn = !lightOn;
}
