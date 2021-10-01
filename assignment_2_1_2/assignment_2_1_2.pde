void setup() {
  size (800,800);
}


  
void draw() {
  //our variables:
  float x = -100f;
  float y = height/2f;
  int innerRadius = 50;
  int outerRadius = 100;
  color innerColor = #91C1F0;
  color outerColor = #546C83;
  int speed = 100;
  
  //some possible extensions
  //x = x + 50 * cos (millis()/500.0f);
  y = y + 100 * sin (millis()/160.0);
  
  x = x + speed * millis()/500.0f % (width+200f);
  
  //setup the canvas and UFO position:
  background (128);
  translate (x, y);
  
  //draw outside of the UFO
  ellipseMode (RADIUS);
  stroke(0);
  strokeWeight(2);
  fill (outerColor);
  ellipse(0,0,outerRadius, outerRadius);
  noStroke();
  fill (0,255,255, 20);
  ellipse(-5,-5,outerRadius/1.1f, outerRadius/1.1f);
  
  //draw inside of the UFO
  stroke(0);
  fill (innerColor);
  ellipse(0,0,innerRadius, innerRadius);
  noStroke();
  fill (255,255,255, 80);
  ellipse(-innerRadius/5,-innerRadius/5,innerRadius/1.5f, innerRadius/1.5f);
}
