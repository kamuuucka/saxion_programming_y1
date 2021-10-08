boolean mouseDown = true; 
void setup(){ 
  size(800,600); 
} 
 
void draw(){ 
  background(128); 
   
  showButton(width/2, 100, "Start"); 
  showButton(width/2, 200, "Options"); 
  showButton(width/2, 300, "Settings"); 
  showButton(width/2, 400, "Credits"); 
  showButton(width/2, 500, "Exit"); 
   
} 
 
void showButton(int x, int y, String name){ 
  strokeWeight(4); 
  fill(80); 
  if (mouseX > x-100 && mouseX < x+100 && mouseY < y+25 && mouseY > y-25){ 
    fill(81,236,231); 
    if(mousePressed && mouseDown){ 
      println(name); 
      mouseDown = false; 
    } 
  } 
  rectMode(CENTER); 
  rect(x,y,200,50,12); 
  fill(0); 
  textSize(20); 
  textAlign(CENTER,CENTER); 
  text(name, x, y); 
} 
 
void mouseReleased(){ 
   mouseDown = true; 
} 
