int r;
float time = 0f;
int counter = 0;
color red = #FF0000;
color green = #00FF00;
color yellow = #FFFF00;

void setup() {
  size(400, 400);
  frameRate(10);
}

void draw() {
  background(0);
  time = millis()/1000%2;
  textSize(200);
  textAlign(CENTER);
  if (counter > 0) {
    r = (int)random(1, 7);
  }

  if (counter < 0) {
    if (r < 3)
    {
      fill (lerpColor(red, #FFFFFF, time));
    } else if ( r <=4)
    {
      fill (lerpColor(yellow, #FFFFFF, time));
    } else
    {
      fill (lerpColor(green, #FFFFFF, time));
    }
  } else if (r < 3)
  {
    fill (red);
  } else if ( r <=4)
  {
    fill (yellow);
  } else
  {
    fill (green);
  }
  text(str(r), width/2, height/2);
  println("Counter: " + counter);
  counter--;
}

void mousePressed() {
  counter = 20;
}
