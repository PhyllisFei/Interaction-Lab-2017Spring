int val;

void setup() {
  Serial.begin(9600);
  val = 0;
}

void loop() {
  val = analogRead(A0);
  //Serial.println(val);
 
  if ( val >= 200) {
    Serial.println("YES");
  } else {
    Serial.println("NO");
  }
}
