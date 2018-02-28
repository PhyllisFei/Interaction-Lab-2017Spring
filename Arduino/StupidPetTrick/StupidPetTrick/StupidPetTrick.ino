#include <Servo.h>

Servo myservo;

// these constants won't change:
const int ledPin = 13;      // LED connected to digital pin 13
const int knockSensor = A0; // the piezo is connected to analog pin 0
const int threshold = 150;  // threshold value to decide when the detected sound is a knock or not


// these variables will change:
int sensorReading = 0;      // variable to store the value read from the sensor pin
int ledState = LOW;         // variable used to store the last LED status, to toggle the light

void setup() {
  Serial.begin(9600);       // use the serial port
  myservo.attach(9);
//  pinMode(ledPin, OUTPUT); // declare the ledPin as as OUTPUT
}

void loop() {
  // read the sensor and store it in the variable sensorReading:
  sensorReading = analogRead(knockSensor);
  Serial.println(sensorReading);

  // if the sensor reading is greater than the threshold:
  if (sensorReading >= threshold) {
    // toggle the status of the ledPin:
   // ledState = !ledState;
    // update the LED pin itself:
    //digitalWrite(ledPin, ledState);
    // send the string "Knock!" back to the computer, followed by newline
    Serial.println("Knock!");
    myservo.write(random(90,180));
    delay(random(200,500));
  } else {
    myservo.write(0);
  }
  delay(100);  // delay to avoid overloading the serial port buffer
  Serial.println("  ");
}
