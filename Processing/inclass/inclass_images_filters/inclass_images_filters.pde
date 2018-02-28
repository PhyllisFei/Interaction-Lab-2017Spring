PImage img;
void setup() {
  size(600, 600);
  img = loadImage("colorful.jpg");
}

void draw() {
  background(0);
  image(img,0,0);
  float blurValue = map(mouseX,0,width,0,10);
  filter(BLUR,blurValue);
}