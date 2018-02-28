// dataType name = value;
int ledPin = 13;
int blinkSpeed = 1000;

void setup() {
  //Serial.begin(9600);
  pinMode(13, OUTPUT);
}

void loop() {
  //Serial.println("Hello!");
  
  digitalWrite(ledPin, HIGH);
  delay(blinkSpeed);
  digitalWrite(ledPin, LOW);
  delay(blinkSpeed);
}
