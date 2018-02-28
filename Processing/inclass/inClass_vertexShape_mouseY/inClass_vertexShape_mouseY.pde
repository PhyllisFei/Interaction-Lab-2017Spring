void setup() {
  size(500, 600);
  background(0);

  //vertex
  beginShape();
  vertex(143, 359);
  vertex(275, 359);
  vertex(143, 498);
  vertex(218, 208);
  vertex(282, 484);
  vertex(200, 300);
  endShape();
}

void draw() {
  //background(0);
}

void mousePressed() {
  println( mouseX + "  ,  " +mouseY);
}