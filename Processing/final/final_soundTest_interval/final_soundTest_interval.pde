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

int INTERVAL_MAX = 60;
int soundInterval1 = 0;
int soundInterval2 = 0;
int soundInterval3 = 0;
int soundInterval4 = 0;
int soundInterval5 = 0;

void setup() {
  size(600, 600);
  setupSerial();

  soundfile1 = new SoundFile(this, "rhythm/01.wav");
  soundfile2 = new SoundFile(this, "rhythm/02.wav");
  soundfile3 = new SoundFile(this, "rhythm/03.aif");
  soundfile4 = new SoundFile(this, "rhythm/04.wav");
  soundfile5 = new SoundFile(this, "rhythm/05.wav");





  //soundfile.loop();
}

void draw() {
  updateSerial();
  ax = sensorValues[0];
  ay = sensorValues[1];
  az = sensorValues[2];
  int avgAcc = (ax + ay + az) / 3;
  if (avgAcc < 0) avgAcc=0;
  //println(avgAcc);


  background(0);

  // play sounds

  if (avgAcc < 10) {
    // play nothing
    // stop?!?
  } else if (avgAcc < 25) {
    if (soundInterval1 == 0) {
      soundfile1.play();
      soundInterval1 = INTERVAL_MAX;
    }
  } else if (avgAcc< 40) {
    if (soundInterval2 == 0) {
      soundfile2.play();
      soundInterval2 = INTERVAL_MAX;
    }
  } else if (avgAcc < 60) {
    if (soundInterval3 == 0) {
      soundfile3.play();
      soundInterval3 = INTERVAL_MAX;
    }
  } else if (avgAcc < 80) {
    if (soundInterval4 == 0) {
      soundfile4.play();
      soundInterval4 = INTERVAL_MAX;
    }
  } else {
    if (soundInterval5 == 0) {
      soundfile5.play();
      soundInterval5 = INTERVAL_MAX;
    }
    //soundfile1.loop();
  }
  //intervals
  if (soundInterval1 > 0) {
    soundInterval1--;
  }
  if (soundInterval2 > 0) {
    soundInterval2--;
  }
  if (soundInterval3 > 0) {
    soundInterval3--;
  }
  if (soundInterval4 > 0) {
    soundInterval4--;
  }
  if (soundInterval5 > 0) {
    soundInterval5--;
  }
  println(
    soundInterval1 + " | " +
    soundInterval2 + " | " +
    soundInterval3 + " | " +
    soundInterval4 + " | " +
    soundInterval5
    );
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