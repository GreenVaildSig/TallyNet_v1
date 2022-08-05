
/*class TallyNet
{
private:
    /* data /
public:
    static int group;
    static char ident[5];
    TallyNet(/* args /);
    ~TallyNet();
};
*/

struct TallyNet
{
    int group = 3;
    const char ident[5] = "TNet";
    uint8_t tally;
    //const int relayPins[4] = {28,37,26,13};                //EN, CS, MOSI, SCK
    //const int optoPins[8] = {2,3,4,5,6,7,8,9};             //LSB
    //const int overwPins[8] = {23,22,21,20,19,18,17,16};    //S1, S2, S3, S4, S5, S6, S7, S8
    const int optoPins[8] = {9,8,7,6,5,4,3,2};             //MSB TallyX
    const int overwPins[8] = {16,17,18,19,20,21,22,23};    //MSB Sx
    const int shiftPins[3] = {29,30,31};                   //DATA, RCLK (store), ShiftRCLK
};


/*TallyNet::TallyNet(/* args /)
{
}

TallyNet::~TallyNet()
{
}

*/

