int px;
int py;
int pz;

void setup() {
  Serial.begin(9600);
  pinMode(9, OUTPUT);
  pinMode(10, OUTPUT);
  pinMode(11, OUTPUT);
}

void loop() {
  int x = analogRead(A0);
  int y = analogRead(A1);
  int z = analogRead(A2);
  int ax = abs(x - px);
  int ay = abs(y - py);
  int az = abs(z - pz);
  Serial.print(ax);
  Serial.print(" ");
  Serial.print(ay);
  Serial.print(" ");
  Serial.println(az);
  px = x;
  py = y;
  pz = z;
  delay(100);

  int brightness1 = constrain(map (ax, 0, 200, 0, 180), 0, 120);
  int brightness2 = constrain(map (ay, 0, 200, 0, 180), 0, 120);
  int brightness3 = constrain(map (az, 0, 200, 0, 180), 0, 120);
  analogWrite(9, brightness1);
  analogWrite(10, brightness2);
  analogWrite(11, brightness3);

  //  if (ax < 100, ay < 100, az < 100) {
  //    digitalWrite(9, HIGH);
  //  } else {
  //    if (ax < 200, ay < 200, az << 200) {
  //      digitalWrite(10, HIGH);
  //    } else {
  //      digitalWrite(11, HIGH);
  //    }
  //  }

}
