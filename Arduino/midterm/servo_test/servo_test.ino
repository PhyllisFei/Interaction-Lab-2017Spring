#include <Servo.h>

Servo myservo1;
Servo myservo2;


void setup() {
  myservo1.attach(9);
  myservo2.attach(10);

  //pinMode(8, OUTPUT);
}

void loop() {
  myservo1.write(33);
  myservo2.write(33);

  //digitalWrite(8, HIGH);
  delay(1000);
  myservo1.write(0);
  myservo2.write(0);

  //digitalWrite(8, LOW);
  delay(1000);
}
