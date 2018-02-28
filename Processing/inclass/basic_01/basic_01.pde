int x;
int y;
int dia;

void setup(){
  size(500,600);
  x = width/2;
  y = height/2;
}

void draw() {
  background(100);
  x++; //x = x + 1;
  y--; //y = y - 1;
  dia +=3; // dia= dia+3;
  ellipse(x,y,dia,dia);
}