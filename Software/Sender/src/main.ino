// #include <networking.ino>
#include "Arduino.h"
#include <NativeEthernet.h>
#include <NativeEthernetUdp.h>
#include <ShiftRegister74HC595.h>
#include <SPI.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include <TeensyThreads.h>
#include <TallyNet.h>
#include <TNet_func.h>
#include <CommandParserfixed.h>

static TallyNet TN;

char sEingabe[127];
//char sEingabe[UDP_TX_PACKET_MAX_SIZE];
IPAddress rip(192, 168, 1, 101);
typedef CommandParser<> CmdParser;
CmdParser netParser;
CmdParser SerialParser;

void setup()
{
  while (!Serial && millis() < 15000)
  {
    // wait up to 15 seconds for Arduino Serial Monitor
  }
    //Serial.begin(9600);
    Serial.setTimeout(10000);
  initPins();
  TN.tally = 0xff;
  StartNet();
  initnetParser();
  initserialParser();
}

void loop()
{
  int charsRead;
  if ((Serial.available() > 0) && Serial)
  {                                                                          // Anything in Serial buffer?
    Serial.print(":  ");
    charsRead = Serial.readBytesUntil('\n', sEingabe, sizeof(sEingabe) - 1); // need to add null
    if (sEingabe[charsRead - 1] == '\r') {
      sEingabe[charsRead - 1] = '\0';
    }
    sEingabe[charsRead] = '\0';
    Serial.println(sEingabe);

    char response[CmdParser::MAX_RESPONSE_SIZE];
    SerialParser.processCommand(sEingabe, response);
    Serial.println(response);
  }
  //netPing();
  //SendBroadcast(8888, sEingabe);
  //SendUnicast(rip, 8889, sEingabe);

  netReceive();
  //SendUnicast(rip, 8889, netReceive());
  UpdateIn();
  delay(100);

}