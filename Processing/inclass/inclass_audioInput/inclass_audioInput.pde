import processing.sound.*;

AudioIn input;
Amplitude amp;

void setup(){
  size(500,600);
  input = new AudioIn(this,0);
  input.start();
  
  amp = new Amplitude(this);
  amp.input(input);
}
void draw(){
  int volume = int(amp.analyze()*100);
  println(volume);
  background(0);
  ellipse(width/2,height/2,volume*4, volume*4);
}