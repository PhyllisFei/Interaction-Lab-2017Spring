int px, py, pz;

void setup() {
  Serial.begin(9600);
}

void loop() {
  int x = analogRead(A0);
  int y = analogRead(A1);
  int z = analogRead(A2);
  int ax = abs(x - px);
  int ay = abs(y - py);
  int az = abs(z - pz);
  Serial.print(ax);
  Serial.print(",");
  Serial.print(ay);
  Serial.print(",");
  Serial.println(az);
  px = x;
  py = y;
  pz = z;
  delay(100);
}
