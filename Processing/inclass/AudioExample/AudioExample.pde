import processing.sound.*;


AudioIn input;

Amplitude amp;


void setup() {

size(500, 600);

background(0);

noStroke();


input = new AudioIn(this, 0);

input.start();


amp = new Amplitude(this);

amp.input(input);

}


void draw() {

float volume = amp.analyze()*100;

if (volume > 10) {

float green = map(volume, 10, 100, 0, 255);

fill(255, green, 0);

ellipse(random(width),random(height),volume,volume);

}

}