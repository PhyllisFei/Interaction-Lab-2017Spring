PImage img;
void setup() {
  size(600, 600);
  img = loadImage("colorful.jpg");
}

void draw() {
  background(0);

  //tint(w);
  //tint(w,a);
  //tint(r,g,b);
  //tint(r,g,b,a);

  tint(255, 255, 255,100);
  image(img, 0, 0, 300, 300);
  tint(255, 255, 0);
  image(img, 300, 0, 300, 300);
  tint(0, 255, 255);
  image(img, 0, 300, 300, 300);
  tint(0, 0, 255);
  image(img, 0, 300, 300, 300);
  //image(img,x,y);
  //image(img,x,y,w,h);
}