import processing.video.*;

Capture cam;

void setup() {
  size(640, 480);
  background(0);
  noStroke();
  ellipseMode(CORNER);
  cam = new Capture (this, 640, 480);
  cam.start();
}

void draw() {
  background(0);
  if (cam.available() == true) {
    cam.read();
    cam.loadPixels();
  }
  int w = cam.width;
  int h = cam.height;
  int size = int(map(mouseX,0,width,20,100));
  for (int y=0; y<h; y+=size) {
    for (int x=0; x<w; x+=size) {
      int index = x + y*w; //*******
      color c = cam.pixels[ index ];
      float r= red(c);
      float g= green(c);
      float b= blue(c);

      fill(c);
      ellipse(x, y, size, size);
    }
  }
  //updatePixels();
  //println(cam.pixels.length); //640 * 480
  //image(cam, 0, 0);
}