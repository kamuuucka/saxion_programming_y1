int dice;

void draw() {
}

void keyPressed() {
  dice = (int)random(1, 13);
  println(dice);

  if (dice == 1 || dice ==2) //dice <= 2
  { 
    println("You stumble, fumble, and drop your weapon, you lose one round.");
  } 
  else if (dice == 3 || dice == 4) //dice <= 4
  { 
    println("Beautiful swing, a clean 720 degrees turn, but missing everything.");
  } 
  else if (dice >=5 && dice <=8) //dice <= 8
  { 
    println("You scratch the Orc's back, pulling a nail, the Orc gets " + (int)random(1, 5) + " of damage.");
  } 
  else if (dice == 12) 
  {
    println("CRITICAL! Orc screams 'Mommy it hu..' then hits the floor, dead as a doornail.");
  } 
  else
  {
    println("Nice hit, roll " + ((int)random(1, 9) + 2) + " for damage!");
  }
}
