int r;
int g;
int b;
int size;

void setup() {
  size (500, 600);
  background(0);
  noStroke();
  size = 10;

  r = 255;
  g = 0;
  b = 0;
}

void draw() {
  //fill(r, g, b);
  //ellipse(mouseX, mouseY, size, size);
}

//void mousePressed / mouseMoved() / mouseDragged() / mouseReleased() {
  
void mouseDragged() {
  //draw
  stroke(r, g, b);
  strokeWeight(size);
  line(pmouseX, pmouseY, mouseX, mouseY);
  
}

void mouseReleased() {
  // change color & size
  r = int ( random(255) );
  g = int ( random(255) );
  b = int ( random(255) );
  size = int ( random(10, 30) );
  
  //fill(r, g, b);
  //ellipse(mouseX, mouseY, size, size);
}