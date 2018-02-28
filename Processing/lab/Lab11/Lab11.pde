import processing.serial.*;

Serial myPort;
int val;

PImage img;

void setup() {
  size(600, 600);
  img = loadImage("IMG_2493.jpg");
  myPort = new Serial(this, Serial.list()[1], 9600);
  myPort.read();
}

void draw() {
  background(0);
  while (myPort.available() > 0) {
    val = myPort.read();
    println(val);
  }

  if (val > 0) {
    tint(255, 255, 255);
    image(img, 0, 0, 300, 300);
    tint(0, 255, 255);
    image(img, 300, 300, 300, 300);
  } else {
    tint(255, 255, 0);
    image(img, 300, 0, 300, 300);
    tint(255, 0, 255);
    image(img, 0, 300, 300, 300);
  }
}