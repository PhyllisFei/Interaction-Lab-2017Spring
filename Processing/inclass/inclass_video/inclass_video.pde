import processing.video.*;
Movie mov;


void setup() {
  size(640, 360);
  background(0);
  mov = new Movie(this, "sample.mov");
  mov.loop();
}
void draw() {
  if(mov.available() == true){
    mov.read();
  }
  //tint(255,0,0);
  image(mov,0,0);
  //filter(BLUR);
}

void keyPressed(){
  mov.jump (random(mov.duration()));
}

void movieEvent(Movie m) {
  m.read();
}