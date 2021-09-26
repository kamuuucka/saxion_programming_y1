int dronePositionX = 0; //<>// //<>//
int dronePositionY = 0;
int rotorLeftPosition;
int rotorRightPosition;
int rotorTopPosition;
int rotorBottomPosition;
int rotorSize = 140;
int centerHeight = 180;
int centerWidth = 120;
int rotorX = 70;
int rotorY = 40;
int rotation = 0;
int rotationSpeed = 20;
float battery = 1000;
float startX;
float startY;
float time = 0f;
color centerColor = #FFFFFF;
color shadowColor = #EDEDE8;
color rotorColor = #7B7777;
color lightColorFrom = #17FC0F;
color lightColorTo = #000000;
color lightColor = #000000;
color batteryFrom = #00FF00;
color batteryTo = #FF0000;

void setup() {
  size(800, 600);
  surface.setResizable(true);
  frameRate(60);
}

void draw() {
  dronePositionX = width / 2 - 60;
  dronePositionY = height / 2 - 90;
  startX = 0;
  startY = 0;
  rotorX = 70;
  rotorY = 40;
  time = millis()/1000%2;
  lightColor = lerpColor(lightColorFrom, lightColorTo, time);
  rotorLeftPosition = dronePositionX - (rotorX);
  rotorRightPosition = dronePositionX + centerWidth + (rotorX);
  rotorTopPosition = dronePositionY - (rotorY);
  rotorBottomPosition = dronePositionY + centerHeight + (rotorY);

  background(150);
  stroke(1);
  strokeWeight(4);
  
  fill(lerpColor(batteryTo, batteryFrom,battery/1000));
  rect(width/2 - 386, 11, 103,37);
  fill(255);
  textSize(20);
  text((int)battery/10 + "%", 26,37);

  if (mouseX > 0 && mouseX < width-10 &&
    mouseY > 0 && mouseY < height-10 &&
    battery > 0) {
    //Drone is doing circles in the middle of the screen. Translate moves the 0,0 point to a new one.
    startX = startX + 100 * cos (millis()/500.0f);
    startY = startY + 100 * sin (millis()/500.0f);
    translate(startX, startY);
    battery-=0.5;
  }

  

  //ROTORS
  //By changing rotorX and rotorY all of the rotors move by the same amount of pixels
  fill(rotorColor);
  ellipse(rotorLeftPosition, rotorTopPosition, rotorSize, rotorSize);
  ellipse(rotorRightPosition, rotorTopPosition, rotorSize, rotorSize);
  ellipse(rotorLeftPosition, rotorBottomPosition, rotorSize, rotorSize);
  ellipse(rotorRightPosition, rotorBottomPosition, rotorSize, rotorSize);

  //DRONE ARMS
  strokeWeight(8);
  fill(0, 0, 0);
  line(rotorLeftPosition, rotorTopPosition, dronePositionX + centerWidth / 2, dronePositionY + centerHeight / 2);
  line(rotorRightPosition, rotorTopPosition, dronePositionX + centerWidth / 2, dronePositionY + centerHeight / 2);
  line(rotorLeftPosition, rotorBottomPosition, dronePositionX + centerWidth / 2, dronePositionY + centerHeight / 2);
  line(rotorRightPosition, rotorBottomPosition, dronePositionX + centerWidth / 2, dronePositionY + centerHeight / 2);

  //ROTATING BLADES
  //Push and pop are used to store drawing in memory. At first we move the 0,0 point to the middle of the rotor. Then we rotate the blade by radians (angle). At the end we draw the blade.
  pushMatrix();
  translate(rotorLeftPosition, rotorTopPosition);
  if (mouseX > 0 && mouseX < width-10 && mouseY > 0 && mouseY < height-10 && battery > 0) rotate(radians(rotation));
  ellipse(0, 0, rotorSize-4, 5);
  popMatrix();
  pushMatrix();
  translate(rotorRightPosition, rotorTopPosition);
  if (mouseX > 0 && mouseX < width-10 && mouseY > 0 && mouseY < height-10 && battery > 0) rotate(radians(rotation));
  ellipse(0, 0, rotorSize-4, 5);
  popMatrix();
  pushMatrix();
  translate(rotorLeftPosition, rotorBottomPosition);
  if (mouseX > 0 && mouseX < width-10 && mouseY > 0 && mouseY < height-10 && battery > 0) rotate(radians(rotation));
  ellipse(0, 0, rotorSize-4, 5);
  popMatrix();
  pushMatrix();
  translate(rotorRightPosition, rotorBottomPosition);
  if (mouseX > 0 && mouseX < width-10 && mouseY > 0 && mouseY < height-10 && battery > 0) rotate(radians(rotation));
  ellipse(0, 0, rotorSize-4, 5);
  popMatrix();
  rotation+=rotationSpeed;


  //DRONE SHADOW
  strokeWeight(4);
  fill(shadowColor);
  rect(dronePositionX, dronePositionY, centerWidth, centerHeight, 70);

  //DRONE FRONT
  noStroke();
  fill(centerColor);
  rect(dronePositionX+8, dronePositionY+8, centerWidth-16, centerHeight-16, 50);

  //DRONE LIGHT
  stroke(1);
  fill(lightColor);
  rect(dronePositionX+80, dronePositionY+30, 13, 20, 50);
}
