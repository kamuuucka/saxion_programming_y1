int r;

void setup(){
 size(400,400);
 frameRate(60);
}

void draw(){
  background(153);
  textSize(200);
  textAlign(CENTER);
  if (r < 3)
  {
    fill (255,0,0);
  } 
  else if ( r <=4)
  {
    fill (239,248,0);
  } 
  else
  {
    fill (0,255,0);
  }
  text(str(r), width/2, height/2);
}

/*void keyPressed(){
  r = (int)random(1,7);
  println(r);
}*/

void keyReleased(){
  r = (int)random(1,7);
  println(r);
}
