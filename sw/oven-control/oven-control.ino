#define TOP_SMALL 5
#define TOP_BIG   4
#define BOT       8
#define BACK      9
#define BACK_FAN  3
#define DOOR_FAN  6
#define LIGHT     7
#define NOT_USED  2

bool s_top_small;
bool s_top_big;
bool s_bot;
bool s_back;
bool s_back_fan;
bool s_door_fan;
bool s_light;

void set_relays(){
  digitalWrite(TOP_SMALL,s_top_small);
  digitalWrite(TOP_BIG,s_top_big);
  digitalWrite(BOT,s_bot);
  digitalWrite(BACK,s_back);
  digitalWrite(BACK_FAN,s_back_fan);
  digitalWrite(DOOR_FAN,s_door_fan);
  digitalWrite(LIGHT,s_light);
}

void stop_all(){
  s_top_small = false;
  s_top_big = false;
  s_bot = false;
  s_back = false;
  s_back_fan = false;
  s_door_fan = false;
  s_light =  false;
  set_relays();
}

void print_relays(){
  Serial.print("TS:");
  Serial.print(s_top_small);
  Serial.print(";TB:");
  Serial.print(s_top_big);  
  Serial.print(";BOT:");
  Serial.print(s_bot);  
  Serial.print(";BACK:");
  Serial.print(s_back);  
  Serial.print(";BF:");
  Serial.print(s_back_fan);  
  Serial.print(";DF:");
  Serial.print(s_door_fan);  
  Serial.print(";L:");
  Serial.print(s_light);
  Serial.print(";");    
}


void print_temp(){
  Serial.print("TEMP:");
  Serial.print(analogRead(A3));
  Serial.print(";");
}

void setup() {
  pinMode(TOP_SMALL,OUTPUT);
  pinMode(TOP_BIG,OUTPUT);
  pinMode(BOT,OUTPUT);
  pinMode(BACK,OUTPUT);
  pinMode(BACK_FAN,OUTPUT);
  pinMode(DOOR_FAN,OUTPUT);
  pinMode(LIGHT,OUTPUT);
  pinMode(NOT_USED,OUTPUT);
  digitalWrite(NOT_USED,false);

  Serial.begin(115200);
  Serial.println("Booting...");
}

int delaycnt;

void loop() {
  
  set_relays();

  while (!Serial.available() && delaycnt < 5000){
    delaycnt++;
    delay(1);
  }

  if (delaycnt >= 5000){
      stop_all();
      while (!Serial.available()){
        Serial.println("Safety power off");
        delay(1000);
      }
  }

  delaycnt = 0;
  
  print_relays();
  print_temp();
  Serial.println();

  if (Serial.available()){
    char ch;
    ch = Serial.read();
    switch(ch){
      case 't':
        s_top_small = !s_top_small;
        break;
      case 'T':
        s_top_big = !s_top_big;
        break;
      case 'b':
        s_bot = !s_bot;
        break;
      case 'z':
        if (!s_back){
          s_back = true;
          s_back_fan = true;
        } else {
          s_back = false;
          s_back_fan = false;
        }
        break;
      case 'f':
        s_back_fan = !s_back_fan;
        if (s_back && !s_back_fan){
          s_back = false;
        }
        break;
      case 'd':
        s_door_fan = !s_door_fan;
        break;
      case 'l':
        s_light = !s_light;
        break;
      case 'k': //keepalive packet
        break;
    }
  }
  
}
