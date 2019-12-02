#include <Arduino.h>
#include <math.h>
#include <TinyGPS++.h>
#include <SoftwareSerial.h>
/*
   This sample sketch demonstrates the normal use of a TinyGPS++ (TinyGPSPlus) object.
   It requires the use of SoftwareSerial, and assumes that you have a
   4800-baud serial GPS device hooked up on pins 4(rx) and 3(tx).
*/
static const int RXPin = 10, TXPin = 11;
static const uint32_t GPSBaud = 9600;
void matcher();
void displayInfo();


float cams[3][2]={
                  {-31.95,115.85}, 
                  {-31.95,115.86},
                  {-31.95,116.00} 
                 };

float dlat, dlong, currentLat, currentLong;
// The TinyGPS++ object
TinyGPSPlus gps;

// The serial connection to the GPS device
SoftwareSerial ss(RXPin, TXPin);

//
void setup()
{
  Serial.begin(115200);
  ss.begin(GPSBaud);

}

void loop()
{
  // This sketch displays information every time a new sentence is correctly encoded.
  while (ss.available() > 0)
    if (gps.encode(ss.read()))
      displayInfo();
      matcher();
  delay(100);

  if (millis() > 5000 && gps.charsProcessed() < 10)
  {
    Serial.println(F("No GPS detected: check wiring."));
    while(true);
  }
}

void displayInfo()
{
  //Serial.print(F("Location: ")); 
  if (gps.location.isValid())
  {
    currentLat = roundf(100 *gps.location.lat())/100;
    currentLong = roundf(100* gps.location.lng())/100;
  }
  else
  {
    Serial.print(F("INVALID"));
  }
  Serial.println(" ");
}


void matcher()
{
  for (int i = 0; i < 3; i++)
  {
    dlat = cams[i][0];
    dlong= cams[i][1];
    double distanceThreshold = 1000000;
    if(gps.distanceBetween(dlat, dlong, currentLat, currentLong) < distanceThreshold)
    {
      Serial.print("Alert! Camera is *");
      Serial.print(roundf(100* gps.distanceBetween(dlat, dlong, currentLat, currentLong)/100));  
      Serial.println("* metres away");
    }
  }
   
}