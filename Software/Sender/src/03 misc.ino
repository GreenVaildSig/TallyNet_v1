#include "Arduino.h"
#include <SPI.h>
#include <ShiftRegister74HC595.h>
#include <core_pins.h>

ShiftRegister74HC595<1> sr(TN.shiftPins[0], TN.shiftPins[2], TN.shiftPins[1]);

/*void UpdateOut(uint8_t sdata) {    
    send_relay(sdata, TN.relayPins[1]);
    send_led(TN.tally);

}*/

/*void UpdateIn() { // Rework
    uint8_t tnum;
    uint8_t button = 0B00000000;
    uint8_t opto = 0B00000000;
    Serial.println("UpdatIN");

    for (int i = 0; i < 8; i++) {       // überprüfe Eingänge
        if (digitalRead(TN.optoPins[i]) == LOW) {
            //opto = opto | 0x01;
            Serial.print("t");
            bitWrite(opto, i, 1);
            Serial.println(opto, BIN);
        } else {
            //opto = opto & 0xfe;
            Serial.print("t");
            bitWrite(opto, i, 0);
            Serial.println(opto, BIN);
        }
        //opto = opto << 1;

        if (digitalRead(TN.overwPins[i]) == HIGH) {
            //button = button | 0x01;
            Serial.print("s");
            bitWrite(button, i, 1);
            Serial.println(button, BIN);
        } else {
            //button = button & 0xfe;
            Serial.print("s");
            bitWrite(button, i, 0);
            Serial.println(button, BIN);
        }
        //button = button << 1;
    }

    tnum = opto | button;
    if (tnum == TN.tally) return;
    TN.tally = tnum;

    char line[50];
    int cx;

    cx = snprintf(line, 49, "set %X", tnum);

    Serial.println(line);
    SendBroadcast(8888, line);
    send_led(tnum);

}*/

void UpdateIn() { // Prototyp-FIX
    uint8_t tnum;
    uint8_t button = 0B00000000;
    uint8_t opto = 0B00000000;
    Serial.println("UpdatIN");

    for (int i = 0; i < 8; i++) {       // überprüfe Eingänge
        if (digitalRead(TN.optoPins[i]) == LOW) {
            //opto = opto | 0x01;
            Serial.print("t");
            bitWrite(opto, i, 1);
            Serial.println(opto, BIN);
        } else {
            //opto = opto & 0xfe;
            Serial.print("t");
            bitWrite(opto, i, 0);
            Serial.println(opto, BIN);
        }
        //opto = opto << 1;

        if (analogRead(TN.overwPins[i]) > 1022) {
            //button = button | 0x01;
            Serial.print("s");
            bitWrite(button, i, 1);
            Serial.println(button, BIN);
        } else {
            //button = button & 0xfe;
            Serial.print("s");
            bitWrite(button, i, 0);
            Serial.println(button, BIN);
        }
        //button = button << 1;
    }

    tnum = opto | button;
    if (tnum == TN.tally) return;
    TN.tally = tnum;

    char line[50];
    int cx;

    cx = snprintf(line, 49, "set %X", tnum);

    Serial.println(line);
    SendBroadcast(8888, line);
    send_led(tnum);

}

void initPins() {

    /*for (int i = 0; i < 3; i++) {      // setze alle Pins als Ausgang
        pinMode(TN.relayPins[i], OUTPUT);
    }*/
    for (int i = 0; i < 2; i++) {      // setze alle Pins als Ausgang
        pinMode(TN.shiftPins[i], OUTPUT);
    }
     for (int i = 0; i < 7; i++) {       // setze alle Pins als Eingang
        pinMode(TN.optoPins[i], INPUT);
    }
    for (int i = 0; i < 7; i++) {      // setze alle Pins als Eingang
        pinMode(TN.overwPins[i], INPUT);
    }
    send_led(0xFF);
    delay(100);
    send_led(0x00);
}

// transmit byte serially, MSB first
void send_relay(uint8_t data, int CS) {

    SPI.beginTransaction(SPISettings(4000000, MSBFIRST, SPI_MODE0));
    // select device
    digitalWrite(CS, 0); // set CS to low

    SPI.transfer(data);

   // deselect device
   digitalWrite(CS, 1); // set CS to high

   SPI.endTransaction();
}

void send_led(uint8_t bits) {
    digitalWrite(TN.shiftPins[1], LOW);
    // shift out the bits:
    shiftOut(TN.shiftPins[0], TN.shiftPins[2], LSBFIRST, bits);
    //take the latch pin high so the LEDs will light up:
    digitalWrite(TN.shiftPins[1], HIGH);
    // pause before next value:
    delay(500);


}
