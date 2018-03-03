// IMA NYU Shanghai
// Interaction Lab
//use mousePress in proessing to control the LED

int valueFromProcessing;
int ledPin = 13;


void setup() {
  Serial.begin(9600);
  pinMode(ledPin, OUTPUT);
  pinMode(8, OUTPUT);
}


void loop() {
  // to receive a value from Processing
  while (Serial.available()) {
    valueFromProcessing = Serial.read();
  }
  
  if (valueFromProcessing == 'H') {
    digitalWrite(ledPin, HIGH);
    digitalWrite(8, HIGH);

  } else if (valueFromProcessing == 'L') {
    digitalWrite(ledPin, LOW);
    digitalWrite(8, LOW);
  } else {
    // something esle
  }
  
  
  // too fast communication might cause some latency in Processing
  // this delay resolves the issue.
  delay(10);
}
