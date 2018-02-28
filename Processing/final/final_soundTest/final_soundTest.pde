import processing.sound.*;
import processing.serial.*;

String myString = null;
Serial myPort;


int NUM_OF_VALUES = 3;   /** YOU MUST CHANGE THIS ACCORDING TO YOUR PROJECT **/
int[] sensorValues;      /** this array stores values from Arduino **/


int ax;
int ay;
int az;

SoundFile soundfile1; 
SoundFile soundfile2; 
SoundFile soundfile3; 
SoundFile soundfile4; 
SoundFile soundfile5; 

void setup() {
  size(600, 600);
  setupSerial();

  soundfile1 = new SoundFile(this, "rhythm/120_funky-vox-synth-rhythm-2.wav"); 
  soundfile2 = new SoundFile(this, "rhythm/149_walking-rhythm.aif");
  soundfile3 = new SoundFile(this, "rhythm/akaizap.aif"); 
  soundfile4 = new SoundFile(this, "rhythm/pad-cutoff-rhythm-loop.wav"); 
  soundfile5 = new SoundFile(this, "rhythm/analog_spindown.aif"); 
  //soundfile.loop();
}

void draw() {
  updateSerial();
  ax = sensorValues[0];
  ay = sensorValues[1];
  az = sensorValues[2];
  int avgAcc = (ax + ay + az) / 3;
  println(avgAcc);


  background(0);

  if (avgAcc < 15) {
    // play nothing
  } else if (avgAcc < 50) {
    if (soundfile2.isPlaying() == 0) {
      soundfile2.play();
    }
  } else if (avgAcc< 60) {
    soundfile2.stop();
    if (soundfile1.isPlaying() == 0) {
      soundfile1.play();
    }
  } else if (avgAcc < 80) {
    //soundfile1.play();
    //soundfile2.play();
    //soundfile3.play();
  } else if (avgAcc < 100) {
    //soundfile1.stop();
    //soundfile2.play();
    //soundfile3.play();
    //soundfile4.play();
  } else {
    //soundfile1.play();
    //soundfile2.play();
    //soundfile3.play();
    //soundfile4.play();
    //soundfile5.play();
    //soundfile1.loop();
  }
}





///// SERIAL COMMUNICATION /////

void setupSerial() {
  printArray(Serial.list());
  myPort = new Serial(this, Serial.list()[ 1 ], 9600);
  // WARNING!
  // You will definitely get an error here.
  // Change the PORT_INDEX to 0 and try running it again.
  // And then, check the list of the ports,
  // find the port "/dev/cu.usbmodem----" or "/dev/tty.usbmodem----" 
  // and replace PORT_INDEX above with the index number of the port.

  myPort.clear();
  // Throw out the first reading,
  // in case we started reading in the middle of a string from the sender.
  myString = myPort.readStringUntil( 10 );  // 10 = '\n'  Linefeed in ASCII
  myString = null;

  sensorValues = new int[NUM_OF_VALUES];
}



void updateSerial() {
  while (myPort.available() > 0) {
    myString = myPort.readStringUntil( 10 ); // 10 = '\n'  Linefeed in ASCII
    if (myString != null) {
      String[] serialInArray = split(trim(myString), ",");
      if (serialInArray.length == NUM_OF_VALUES) {
        for (int i=0; i<serialInArray.length; i++) {
          sensorValues[i] = int(serialInArray[i]);
        }
      }
    }
  }
}