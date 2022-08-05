#include "Arduino.h"
#include <NativeEthernet.h>
#include <NativeEthernetUdp.h>
#include <TNet_func.h>
//#include <TallyNet.h>

byte mac[] = {
  0xDE, 0xAD, 0xBE, 0xEF, 0xFE, 0xEC
};
IPAddress ip(192, 168, 1, 170);
IPAddress Subnet(255, 255, 255, 0);
IPAddress broadcastIP(ip | ( ~ Subnet));


unsigned int localPort = 8888;      // local port to listen on

// buffers for receiving and sending data
//char packetBuffer[UDP_TX_PACKET_MAX_SIZE];  // buffer to hold incoming packet,
char packetBuffer[255];
char ReplyBuffer[] = "acknowledged";        // a string to send back

// An EthernetUDP instance to let us send and receive packets over UDP
EthernetUDP Udp;
//static TallyNet TN;

void StartNet() {
  // You can use Ethernet.init(pin) to configure the CS pin
  //Ethernet.init(10);  // Most Arduino shields
  //Ethernet.init(5);   // MKR ETH shield
  //Ethernet.init(0);   // Teensy 2.0
  //Ethernet.init(20);  // Teensy++ 2.0
  //Ethernet.init(15);  // ESP8266 with Adafruit Featherwing Ethernet
  //Ethernet.init(33);  // ESP32 with Adafruit Featherwing Ethernet

  // start the Ethernet
  Ethernet.begin(mac, ip);


  // Check for Ethernet hardware present
  if (Ethernet.hardwareStatus() == EthernetNoHardware) {
    Serial.println("Ethernet shield was not found.  Sorry, can't run without hardware. :(");
    while (true) {
      delay(1); // do nothing, no point running without Ethernet hardware
    }
  }
  if (Ethernet.linkStatus() == LinkOFF) {
    Serial.println("Ethernet cable is not connected.");
  }


  // start UDP
  Udp.begin(localPort);


}

void SendBroadcast(int rport, char content[], int mode = 1) {
  // if there's data available, read a packet
  Udp.beginPacket(broadcastIP, rport);   //uechosrv
  if (mode == 1){
    Udp.write(TN.ident);
    Udp.write(" ");
    Udp.write(TN.group + '0');
    Udp.write(" ");
  }
  Udp.write(content);
  Udp.endPacket();
  delay(10);
}

void SendUnicast(IPAddress rip, int rport, char content[], int mode = 1) {
  // if there's data available, read a packet
  Udp.beginPacket(rip, rport);   //uechosrv
  if (mode == 1){
    Udp.write(TN.ident);
    Udp.write(" ");
    Udp.write(TN.group + '0');
    Udp.write(" ");
  }
  Udp.write(content);
  Udp.endPacket();
  delay(10);
}

void netReceive() {
// Receive and decide handling to subfunctions
  int packetSize = Udp.parsePacket();
  if (packetSize) {
    IPAddress remote = Udp.remoteIP();
    if (remote == ip) {return;}
    Udp.read(packetBuffer, UDP_TX_PACKET_MAX_SIZE);
    char content[UDP_TX_PACKET_MAX_SIZE];
    strcpy(content, packetBuffer);
    memset(&packetBuffer[0], 0, sizeof(packetBuffer)); // Clear buffer      

    char * pch;
    pch = strstr (content,TN.ident); // Finde Schlüsselwort in C-String
    if (pch != NULL) { // Wenn gefunden, dann:
      Serial.println(pch);
      Serial.print("Sizeof Ident: "); Serial.println(sizeof(TN.ident));

      //Isolieren der GruppenID in C-String
      char idchar[2];
      idchar[0] = content[sizeof(TN.ident)]; 
      idchar[1] = 0;
      int idnum = atoi(idchar); // Umwandeln des char in int
      if (idnum == TN.group) { // Wenn GuppenID gleich mit Empfang, dann
        //Ausgabe des Empfangs
        Serial.print(remote); Serial.print(":"); Serial.println(Udp.remotePort());
        Serial.print("got command: ");
        char cmdIn[25];
        strcpy(cmdIn, content + sizeof(TN.ident) + 2);
        Serial.println(cmdIn);

        // Analyse des Befehls
        char response[CmdParser::MAX_RESPONSE_SIZE];
        netParser.processCommand(cmdIn, response);
        Serial.println(response);

      } else return;
      
    } else {
      return;
    }
    return;
  }



}



void netPing() {
// Ping handling
  SendBroadcast(8888, "ping");


}

void netRelpyPong() {
  SendBroadcast(8888, "pong");
}

void netCountPong() {
  
}