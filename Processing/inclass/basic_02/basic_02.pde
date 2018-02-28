void setup() {
  size(500,600);
  background(50);
}

void draw() {

  float r = random(255);
  float g = random(255);
  float b = random(255);
  
  stroke(r,g,b);
  line(width/2, height/2,mouseX,mouseY);
}