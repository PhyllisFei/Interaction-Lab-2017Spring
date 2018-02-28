void setup() {
  Serial.begin(9600);
  pinMode(A0, OUTPUT);
}

void loop() {
  //Serial.println();
  int val = analogRead(A0);
  //Serial.println(val);
  if (val > 400) {
    Serial.write(1);
  } else {
    Serial.write(0);
  }
  delay(100);

}
