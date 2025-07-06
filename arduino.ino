const int PD_PINS[5] = {34, 35, 32, 33, 36};
void setup()
{
  Serial.begin(115200);
  for (int i = 0; i < 5; i++) 
  {
    pinMode(PD_PINS[i], INPUT);
  }
}

void loop() 
{
 
  for (int i = 0; i < 5; i++) 
 {
    int val = analogRead(PD_PINS[i]);
    Serial.print(val);
    if (i < 4) Serial.print(","); 
  }
  Serial.println(); 

  delay(100); 
}
