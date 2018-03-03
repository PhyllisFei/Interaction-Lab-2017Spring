// IMA NYU Shanghai
// Interaction Lab
// Updated Oct 18, 2017

void setup() {
  Serial.begin(9600);
}


void loop() {
  int sensorValue = analogRead(A0)/4;
  Serial.write(sensorValue);

  // too fast communication might cause some latency in Processing
  // this delay resolves the issue.
  delay(10);
}
