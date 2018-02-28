import processing.serial.*;

Serial myPort;

void setup() {
  size(300,300);
  printArray(Serial.list());
  myPort = new Serial (this, Serial.list()[2], 9600);
}

void draw() {
  while (myPort.available() > 0) {
  val = myPort.read();
  }
  println(val);
}