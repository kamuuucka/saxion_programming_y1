class Animation {
  PImage[] images;
  int current = 0;
  int index = 0;
  boolean playing = false;

  Animation (PImage pSourceImage, int columns, int rows) {
    //create array of images (Hint: think about how many images you need, look at the sprite sheet as well)
    images = new PImage[columns*rows];

    //calculate size of each image
    int imageWidth = pSourceImage.width / columns;
    int imageHeight = pSourceImage.height / rows;
    println("Image size: " + imageWidth + ", " + imageHeight);

    //create a for loop to create each sub image and copy the correct data from the original
    //hints: use createImage (imageWidth, imageHeight, ARGB) and subImage.copy (pSourceImage, ..., ...., .....)
    //Check the references where needed, since we have never used this before
    for (int i = 0; i < rows; i++){
      for(int j = 0; j < columns;j++){
        PImage subImage = createImage(imageWidth, imageHeight, ARGB);
        subImage.copy(pSourceImage, j*imageWidth, i*imageHeight, imageWidth, imageHeight, 0, 0, imageWidth, imageHeight);
        index = j + i * rows;
        images[index] = subImage;
        //println("INDEX: " + index);
      }
    }
    
  }
  
  void draw(int x, int y) {
     //todo the current subimage at x, y
     if (playing){
        image(images[current], x, y);
     }

  }
  
  void next() {
     //todo switch to the next sub image 
     if(current < 63){
       current++;
     }
     else {
       current = 0;
       playing = false;
       isAnimating = false;
     }
  }
  
  void mouseClicked(){
    if (!playing){
      playing = true;
      current = 0;
    }
  }
}
