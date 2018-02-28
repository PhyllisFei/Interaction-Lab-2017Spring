void setup() {
  size(500,600);
  noStroke();

}

void draw() {
  background(0);
  
  fill(255,0,0);
  star(100,100, 1.0);
  fill(255,255,0);
  star(-100,-100, 1.0);
  
  int val = add(1,3);
  println(val);
}

int add(int a, int b) {
  int result = a + b;
  return result;
}

void star(int x, int y, float s) {
  pushMatrix();
  translate(x,y);
  scale(s);
  
  beginShape();
  //vertex (x,y)
  vertex(125, 168);
  vertex(233, 64);
  vertex(325, 159);
  vertex(269, 264);
  vertex(153, 269);
  endShape();
  
  popMatrix();
}

void mousePressed() {
  println( mouseX+ ", " + mouseY);
  
}