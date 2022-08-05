#include <CommandParserfixed.h>


typedef CommandParser<> CmdParser;

/*CmdParser netParser;
CmdParser SerialParser;
*/
void cmdTest(CmdParser::Argument *args, char *response) {
  Serial.print("string: "); Serial.println(args[0].asString);
  Serial.print("double: "); Serial.println(args[1].asDouble);
  Serial.print("int64: "); Serial.println((int32_t)args[2].asInt64); // NOTE: on older AVR-based boards, Serial doesn't support printing 64-bit values, so we'll cast it down to 32-bit
  Serial.print("uint64: "); Serial.println((uint32_t)args[3].asUInt64); // NOTE: on older AVR-based boards, Serial doesn't support printing 64-bit values, so we'll cast it down to 32-bit
  strlcpy(response, "success", CmdParser::MAX_RESPONSE_SIZE);
}

void sendTally(CmdParser::Argument *args, char *response) {
  UpdateIn();

 
  strlcpy(response, "success", CmdParser::MAX_RESPONSE_SIZE);
}
void setTally(CmdParser::Argument *args, char *response) {
  char inTally[CmdParser::MAX_COMMAND_ARG_SIZE + 1];
  strcpy(inTally, args[0].asString);
  uint8_t hexbits;
  sscanf(inTally, "%2x", &hexbits);
  TN.tally = hexbits;
  Serial.println(hexbits);
  Serial.println(TN.tally);
  Serial.println(hexbits, BIN);
  UpdateOut();
  
  strlcpy(response, "success", CmdParser::MAX_RESPONSE_SIZE);
}
void sendInfo(CmdParser::Argument *args, char *response) {
  strlcpy(response, "success", CmdParser::MAX_RESPONSE_SIZE);
}
void chgrp(CmdParser::Argument *args, char *response) {
  strlcpy(response, "success", CmdParser::MAX_RESPONSE_SIZE);
}
void cmdHelp(CmdParser::Argument *args, char *response) {
  strlcpy(response, "success", CmdParser::MAX_RESPONSE_SIZE);
}
void cmdImport(CmdParser::Argument *args, char *response) {
  strlcpy(response, "success", CmdParser::MAX_RESPONSE_SIZE);
}
void cmdRead(CmdParser::Argument *args, char *response) {
  strlcpy(response, "success", CmdParser::MAX_RESPONSE_SIZE);
}
void cmdSet(CmdParser::Argument *args, char *response) {
  strlcpy(response, "success", CmdParser::MAX_RESPONSE_SIZE);
}
void cmdWrite(CmdParser::Argument *args, char *response) {
  strlcpy(response, "success", CmdParser::MAX_RESPONSE_SIZE);
}

void setdebug(CmdParser::Argument *args, char *response) {
  TN.debuglvl = args[0].asInt64;
  strlcpy(response, "success", CmdParser::MAX_RESPONSE_SIZE);
}
void cmdUDP(CmdParser::Argument *args, char *response) {

  //SendBroadcast(8888, "tallyreq");
  strlcpy(response, "success", CmdParser::MAX_RESPONSE_SIZE);
}


void initnetParser() {

  netParser.registerCommand("ping", "", &netRelpyPong);
  netParser.registerCommand("pong", "", &netCountPong);
  netParser.registerCommand("tallyreq", "", &sendTally);
  netParser.registerCommand("set", "s", &setTally);
  netParser.registerCommand("inforeq", "", &sendInfo);
  netParser.registerCommand("chgrp", "i", &chgrp);
  //netParser.registerCommand("chgrp", "s", &chgrpok)

  
}

void initserialParser() {
SerialParser.registerCommand("?", "", &cmdHelp);
  SerialParser.registerCommand("help", "", &cmdHelp);
  SerialParser.registerCommand("import", "s", &cmdImport);
  SerialParser.registerCommand("read", "s", &cmdRead);
  SerialParser.registerCommand("set", "s", &cmdSet);
  SerialParser.registerCommand("write", "", &cmdWrite);
  SerialParser.registerCommand("test", "", &cmdTest);
  SerialParser.registerCommand("UDP", "", &cmdUDP);
  SerialParser.registerCommand("tallyreq", "", &sendTally);
  SerialParser.registerCommand("debug", "i", &setdebug);

}


/*void ParserLoop (){
  if (Serial.available()) {
    char line[128];
    size_t lineLength = Serial.readBytesUntil('\n', line, 127);
    line[lineLength] = '\0';

    char response[CmdParser::MAX_RESPONSE_SIZE];
    parser.processCommand(line, response);
    Serial.println(response);
  }
}
*/
/*void cmdHelp(CmdParser::Argument *args, char *response) {
  Serial.print("string: "); Serial.println(args[0].asString);
  Serial.print("double: "); Serial.println(args[1].asDouble);
  Serial.print("int64: "); Serial.println((int32_t)args[2].asInt64); // NOTE: on older AVR-based boards, Serial doesn't support printing 64-bit values, so we'll cast it down to 32-bit
  Serial.print("uint64: "); Serial.println((uint32_t)args[3].asUInt64); // NOTE: on older AVR-based boards, Serial doesn't support printing 64-bit values, so we'll cast it down to 32-bit
  strlcpy(response, "success", CmdParser::MAX_RESPONSE_SIZE);
}
*/

/*
long timer1;

void loop() {

  if ((timer1 + (30 * 1000)) <= millis()) { //Send a UDP packet every 30 seconds to keep port open
    sendudp("Keep-Alive");
    timer1 = millis();
  }

*/

void debugMSG(char content[], int level = 1) {
  if (TN.debuglvl == 0) return;

  if (TN.debuglvl >= level) {
    switch (level)
    {
    case 1:
      Serial.print("---WARNUNG:");
      break;
    case 2:
      Serial.print("---HINWEIS:");
      break;
    case 3:
      Serial.print("---DEBUG:");
      break;
    default:
      break;
    }
    Serial.println(content);
  }




}