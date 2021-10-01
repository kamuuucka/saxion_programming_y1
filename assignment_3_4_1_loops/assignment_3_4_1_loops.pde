println("First loop:");
int x = 1;
while (x < 11) {
  println(x);
  x++;
}


println("Second loop:");
int y = 8;
while (y > 0) {
  println(y);
  y-=2;
}

println("Third loop:");
for (int i = 10; i > 0; i--){
   println(i);
}

println("Fourth loop:");
for (int i = 1; i < 10; i+=2){
  println(i);
}

println("Sums:");
int sumOne = 0;
int sumTwo= 0;
for (int i = 1; i < 101; i++){
  if ((i >= 50 && i <=100) && (i%5==0 || i%3==0)){
    sumOne += i;
  }
  if ((i >= 50 && i <=100) && (i%5==0 && i%3==0)){
    sumTwo += i;
  }
}
println(sumOne);
println(sumTwo);
