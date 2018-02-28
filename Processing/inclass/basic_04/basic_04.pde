void setup() {
  size(500,600);
  rectMode(CENTER);
 
}

void draw() {
  background(0);
  
  pushMatrix();
  translate(width/2,height/2);
  rotate(frameCount*0.01);
  fill(255,0,0);
  rect(0,0,100,100);
  popMatrix();
  
  pushMatrix();
  translate(mouseX,mouseY);
  rotate(frameCount*0.02);
  fill(255,255,0);
  rect(0,0,100,100);
  popMatrix();
}