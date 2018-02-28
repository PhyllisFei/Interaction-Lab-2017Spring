import processing.video.*;

Capture cam;

void setup() {
  size(640, 480);
  background(0);

  cam = new Capture (this, 640, 480);
  cam.start();
}

void draw() {
  if (cam.available() == true) {
    cam.read();
    cam.loadPixels();
  }

  int w = cam.width;
  int h = cam.height;
  for (int y=0; y<h; y++) {
    for (int x=0; x<w; x++) {
      int index = x + y*w; //*******
      color c = cam.pixels[ index ];
      float r= red(c);
      float g= green(c);
      float b= blue(c);

      if (r>100) {
        cam.pixels[index] = color(r, g, b); //same
      } else {
        float avg = (r+g+b)/3;
        cam.pixels[index] = color(avg); //gray
      }
      //cam.pixels[index] = color(r + random(-30, 30), g+random(-30, 30), b+random(-30, 30));
    }
  }
  updatePixels();
  //println(cam.pixels.length); //640 * 480
  image(cam, 0, 0);
}