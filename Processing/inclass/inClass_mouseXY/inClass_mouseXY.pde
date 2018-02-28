void setup() {
  size(500,600);
}
void draw() {
  background(0);
  //text ("something", x, y);

// "||" = or; "&&" = and

  if (mouseX < 100 || mouseX > 400) {
  background(255,0,0); //red
  } else {
    background(0,0,255); //blue
  }
  
  int value = mouseX;
  text(value, mouseX,mouseY);
  //println(mouseX + "  " + mouseY);

}