PImage img;

void setup() {
  size(600, 600);  
  img = loadImage("beam.png");
  imageMode(CENTER);
  background(0);
}

void draw() {
  fill(0, 30);
  rect(0, 0, width, height);
  image(img, mouseX, mouseY, 100, 100);
}