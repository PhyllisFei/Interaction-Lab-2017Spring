// IMA NYU Shanghai
// Interaction Lab


import processing.serial.*;


Serial myPort;
int valueFromArduino;
float eyeballSwift;
float eyeSize;
float mouthWidth;

void setup() {
  size(600, 600);
  stroke(0);
  strokeWeight(3);


  printArray(Serial.list());
  // this prints out the list of all available serial ports on your computer.

  myPort = new Serial(this, Serial.list()[ 1 ], 9600);
  // WARNING!
  // You will definitely get an error here.
  // Change the PORT_INDEX to 0 and try running it again.
  // And then, check the list of the ports,
  // find the port "/dev/cu.usbmodem----" or "/dev/tty.usbmodem----" 
  // and replace PORT_INDEX above with the index number of the port.
}


void draw() {
  // to read the value from the Arduino
  //eyeballSwift = map(mouseX, 0, width, -24, 24);
  //eyeSize = map(mouseX, 0, width/2, 91, 120);

  // left eye
  fill(255);
  ellipse(width/2-150, height/3, 200, 120);
  fill(0); //w
  ellipse(width/2-150 + eyeballSwift, height/3, eyeSize, eyeSize);

  // right eye
  fill(255);
  ellipse(width/2+150, height/3, 200, 120);
  fill(0); //w
  ellipse(width/2+150 + eyeballSwift, height/3, eyeSize, eyeSize);

  while ( myPort.available() > 0) {
    valueFromArduino = myPort.read();
    eyeballSwift = map(valueFromArduino, 0, width, -24, 24);
    eyeSize = map(valueFromArduino, 0, width/2, 91, 120);
  }
  println(valueFromArduino);
//mouth
  mouthWidth = 0.3;
  noFill();
  stroke(255, 0, 0);
  strokeWeight(5);
  stroke(255);
  strokeWeight(5);

  pushMatrix();
  translate(300, 300);
  rotate(sin(frameCount*0.05)*0.4);
  arc(0, 0, 300, 300, PI*(0.4-mouthWidth), PI*(0.6+mouthWidth));
  //fill(255, 0, 0);
  noStroke();
  popMatrix();

  // add your code here
}