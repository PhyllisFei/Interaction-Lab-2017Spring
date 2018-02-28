void setup() {
  size(500,600);
  background(random(255), random(255), random(255) );
}

void draw() {
  float x = random(width);
  float y = random(height);
  float size = random(50,100);
 
  float r = random(255);
  float g = random(255);
  float b = random(255);
  
  stroke(r,g,b);
  line( width/2, height/2, x,y);
}