int r;

void setup(){
 size(400,400);
 frameRate(60);
}

void draw(){
  background(153);
  textSize(200);
  textAlign(CENTER);
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
