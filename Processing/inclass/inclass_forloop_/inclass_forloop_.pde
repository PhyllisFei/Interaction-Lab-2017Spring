void setup () {
  size(500, 600);
  background(255);
  noStroke();
  //int rectSize = 20;
  //for (int y= 0; y<height; y+=rectSize) {
  //  for (int x= 0; x<width; x+=rectSize) {
  //    fill (random(255), random(255), random(255));
  //    rect(x, y, rectSize, rectSize);
    //}
  //}
}

void draw() {
  int rectSize = 20;
  for (int y= 0; y<height; y+=rectSize) {
    for (int x= 0; x<width; x+=rectSize) {
      fill (random(255), random(255), random(255));
      rect(x, y, rectSize, rectSize);
    }
  }
}