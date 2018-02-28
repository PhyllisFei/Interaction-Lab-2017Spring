#include <Servo.h>
Servo myservoEye1;
Servo myservoEye2;
Servo myservoNose1;
Servo myservoNose2;
Servo myservoMouth;


void setup() {
  Serial.begin(9600);
  myservoEye1.attach(8);
  myservoEye2.attach(12);
  myservoNose1.attach(9);
  myservoNose2.attach(10);
  myservoMouth.attach(7);
  pinMode(11 , INPUT); //switch
}

void loop() {
  //eyes rotating
  myservoEye1.write(180);
  myservoEye2.write(180);
  delay(600);
  myservoEye1.write(0);
  myservoEye2.write(0);
  delay(600);

  //mouth/nose/both out
  int value = digitalRead(11);
  //Serial.println(value);
  if (value == HIGH) {

    long r = random(3);
    Serial.println(r);
    if (r == 0) {
      Serial.println("nose out");
      myservoNose1.write(0);
      myservoNose2.write(0);
      myservoMouth.write(60);
    }
    else if (r == 1) {
      Serial.println("mouth out");
      myservoNose1.write(50);
      myservoNose2.write(50);
      myservoMouth.write(120);
    } else {
      Serial.println("both out");
      myservoNose1.write(0);
      myservoNose2.write(0);
      myservoMouth.write(120);
    }
    //mouth,nose back
  } else {
    myservoNose1.write(50);
    myservoNose2.write(50);
    myservoMouth.write(60);
  }
}
