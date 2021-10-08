void draw(){ 
  println(isFactor(4,0)); 
  println(isFactor(0,4)); 
  println(isFactor(4,20)); 
  println(isFactor(7,20)); 
} 
 
 
 
boolean isFactor(int a, int b){ 
 if(a == 0 || b == 0) return false; 
 else if (b%a==0){ 
   return true; 
 } 
 else return false; 
} 
