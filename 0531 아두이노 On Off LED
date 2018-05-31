int led = 13;

void setup() {
  Serial.begin(9600);
  pinMode(led, OUTPUT);
}

void loop() {
  //시리얼 통신 설정
  if(Serial.available()) {
    int sig = Serial.read();  

    // 변수 sig에 49(숫자 1)가 들어오면 13번 핀에 연결된 led를 켬
    if (sig == 49) {
      digitalWrite(led, HIGH);
      Serial.println(sig);
    } 
    // 변수 sig에 50(숫자 2)가 들어오면 13번 핀에 연결된 led를 끔
    else if ( sig == 50) {
      digitalWrite(led, LOW);
      Serial.println(sig);
    } 
    // 변수 sig에 임의의 다른 신호가 들어오면 아무 동작하지 않음
    else {
      Serial.println(sig);
    }
  }
}
