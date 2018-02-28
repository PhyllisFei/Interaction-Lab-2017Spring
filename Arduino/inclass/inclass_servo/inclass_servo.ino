#include <Servo.h>

Servo myservo;

void setup() {
  Serial.begin(9600);
  myservo.attach(9);
}

void loop() {
  int val = analogRead(A0);
  Serial.println(val);

  // from 0 - 1023(5V)
  // to 0 - 180 degree
  int angle = map(val, 0, 1023, 0, 180);
  delay(1000);
  // map( value, valueMin, valueMax, targetMin, targetMax);
  
  myservo.write(angle);
}
