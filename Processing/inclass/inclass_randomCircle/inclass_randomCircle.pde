//float[] x = {100, 200, 300};
//float[] y = {100, 200, 300};
//float[] size = {50, 80, 120};

//to improve
int numOfCircles = 500;
float[] x = new float[numOfCircles];
float[] y = new float[numOfCircles];
float[] xSpeed = new float[numOfCircles];
float[] ySpeed = new float[numOfCircles];
float[] size = new float[numOfCircles]; // new float [500]

color[] clr = new color[numOfCircles];

//float x1;
//float y1;
//float size1;
//float x2;
//float y2;
//float size2;


void setup() {
  size(500, 600);
  background(0);
  noStroke();
  //x = random(width);
  //y = random(height);
  //size = random(10, 80);
  //x1 = random(width);
  //y1 = random(height);
  //size1 = random(10, 80);
  //x2 = random(width);
  //y2 = random(height);
  //size2 = random(10, 80);

  for (int i=0; i < numOfCircles; i++) {
    x[i] = random(width);
    y[i] = random(height);
    xSpeed[i] = random(-1, 1);
    ySpeed[i] = random(-1, 1);
    size[i] = random(20, 80);
    clr[i] = color ( random(255), random(255), random(255) );
  }
}


void draw() {
  background(0);
  //ellipse (x, y, size, size);
  //ellipse (x1, y1, size1, size1);
  //ellipse (x2, y2, size2, size2);
  //ellipse (x[1], y[1], size[1], size[1]);
  //ellipse (x[2], y[2], size[2], size[2]);

  //to improve
  for (int i = 0; i<size.length; i++) {
    x[i] = x[i]+xSpeed[i];
    y[i] = y[i]+ySpeed[i];

    fill(clr[i]);
    ellipse (x[i], y[i], size[i], size[i]);
  }
}