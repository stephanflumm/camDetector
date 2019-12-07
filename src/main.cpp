#include <Arduino.h>
#include <math.h>
#include <TinyGPS++.h>
#include <SoftwareSerial.h>
#include "Locations_Perth.h"
//#include "Locations_Melbourne.h"


//Change depending on location
static const int RXPin = 10, TXPin = 11;
static const uint32_t GPSBaud = 9600;
float d;
static const uint8_t speakerPin = 12;

void matcher();
void displayInfo();
void soundAlert(int pitch);


float dlat, dlong, currentLat, currentLong;

// The TinyGPS++ object
TinyGPSPlus gps;

// The serial connection to the GPS device
SoftwareSerial ss(RXPin, TXPin);

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
  

  if (millis() > 5000 && gps.charsProcessed() < 10)
  {
    Serial.println("No GPS detected: check wiring.");
    while(true);
  }
}


void displayInfo()
{
  if (gps.location.isValid())
  {
    currentLat = roundf(100 *gps.location.lat())/100;
    currentLong = roundf(100* gps.location.lng())/100;
  }
  else
  {
    Serial.print("INVALID");
  }
  Serial.println(" ");
}



void matcher()
{
  for (int i = 0; i < NUMBER_OF_CAMS; i++)
  {
    dlat = cams[i][0];
    dlong= cams[i][1];
    double distanceThreshold = 1000000;
    if(gps.distanceBetween(dlat, dlong, currentLat, currentLong) < distanceThreshold)
    {
      d = gps.distanceBetween(dlat, dlong, currentLat, currentLong);
      Serial.print("Alert! Camera is *");
      Serial.print(roundf(100* gps.distanceBetween(dlat, dlong, currentLat, currentLong)/100));  
      Serial.println("* metres away");
      
      //BUZZER HERE
      if( d < 25 ){
        soundAlert(100);
      }else if( d < 50 ){
        soundAlert(100);
      }else if( d < 75 ){
        soundAlert(100);
      }else if( d < 100 ){
        soundAlert(100);
      }else{
      }
    }
  }
}


    
void soundAlert(int pitch)
{
  tone(speakerPin, 20, 500);
}
  