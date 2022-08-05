#include <Arduino.h>
void StartNet();
void SendBroadcast(int rport, char content[], int mode = 1);
void SendUnicast(IPAddress rip, int rport, char content[], int mode = 1);
void netReceive();
void netPing();
void netRelpyPong();
void netCountPong();

void send_led();
void UpdateIn();
void initPins();
void initnetParser();
void initserialParser();
void UpdateOut();
//void send_relay(uint8_t data, int CS);
void send_relay(uint8_t data);
void debugMSG(char content[], int level);
