import processing.sound.*;

SoundFile soundfile;

void setup() {
  size(500, 500);
  soundfile = new SoundFile(this, "vibraphon.aiff");
  //soundfile.loop();
}

void draw() {
  //if(soundfile.isPlaying()==0) {

  //}else {
  //}
  //soundfile.play();
  //soundfile.amp(map(mouseY, 0, height, 1.0, 0.0));
  //soundfile.rate(map(mouseX, 0, width, 0.5, 1.5));
}
void mousePressed() {
  if (soundfile.isPlaying()==0) {
    soundfile.stop();
  } else {
    soundfile.play();
  }
}