int c;


void setup() {
  size(500,600);
  textSize(50);
}

void draw(){
  background(0);
  //text("  ", x, y);
  //if (keyPressed) {
    text(char(c), width/2, height/2);
    text(int(c), width/2, height/2+50);
  //}
}

void keyPressed() {
  println(key);
  c=key;
}