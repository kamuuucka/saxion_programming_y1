int dice;
String notLucky;
String lucky;

void draw() {
}

void keyPressed() {
  dice = (int)random(1, 13);
  notLucky = dice + "\nYou were not lucky :(" + "\n" + dice + " points healed";
  lucky = dice + lucky + "\n" + dice * 2 + " points healed";
  if (dice < 10) {
    println(notLucky);
  } else {
    println(dice + "\nYOU WERE LUCKY!!!" + "\n" + dice * 2 + " points healed");
  }
  
  //println( dice < 10 ? notLucky : lucky);
}
