void setup() {
  size(600, 600);
  stroke(0);
  strokeWeight(3);
  noCursor();
}

// color
// range 0 - 255
// alpha = transparency
// w
// w, a
// r, g, b
// r, g, b, a

float eyeballSwiftX;
float eyeballSwiftY;
float eyeSize;
float mouthWidth;
float angle;


void draw() {
  background(120);

  // update the eyeball position and size based on the mouseX position


  eyeballSwiftX = map(mouseX, 0, width, -24, 24);
  if (mouseX < width/2) {
    eyeSize = map(mouseX, 0, width/2, 91, 120);
  } else {
    eyeSize = map(mouseX, width/2, width, 120, 91);
  }

  eyeballSwiftY = map(mouseY, 0, height, -24, 24);
  if (mouseY < height/3) {
    eyeSize = map(mouseY, 0, height/3, 91, 120);
  } else {
    eyeSize = map(mouseY, height/3, width, 120, 91);
  }


  // left eye
  fill(255);
  ellipse(width/2-150, height/3, 200, 120);
  fill(0); //w
  ellipse(width/2-150 + eyeballSwiftX + eyeballSwiftY, height/3, eyeSize, eyeSize);

  // right eye
  fill(255);
  ellipse(width/2+150, height/3, 200, 120);
  fill(0); //w
  ellipse(width/2+150 + eyeballSwiftX - eyeballSwiftY, height/3, eyeSize, eyeSize);


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


  //arc(300, 300, 300, 300, PI*0.3, PI*0.7);
}
//if (mousePressed) {
//println(mouseX);
//}