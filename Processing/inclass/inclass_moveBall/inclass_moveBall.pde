int x, y;

void setup() {
  size(500,600);
  x = width/2;
  y = height/2;
}

void draw() {
  background(0);
  if (keyPressed){
    if (keyCode == LEFT) {
      x = x-1;
    }
    if (keyCode == RIGHT) {
      x = x+1;
    }
    if (keyCode == UP) {
      y--;
    }
    if (keyCode == DOWN) {
      y++;
    }
  }
  ellipse(x,y,50,50);
}