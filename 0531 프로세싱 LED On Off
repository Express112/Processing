//문자열로 변환되어 들어온 값을 int형으로 수정하는 방법.
import processing.serial.*;

Serial port;  //시리얼 통신 객체를 생성
PFont font;  //폰트 객체를 생성

void setup() {
  println("Available serial ports:");
  println(Serial.list());  //시리얼 포트의 리스트를 보여줌
  
  port = new Serial(this, "COM3", 9600);  // 포트 선택, 아두이노가 연결된 포트를 선택해야 함
  //port = new Serial(this, Serial.list()[0], 9600);  
  
  port.clear();  //포트 초기화
  
  font = createFont("휴먼편지체", 16);  //텍스트폰트 로드
  
  size(250, 200);  //화면 크기 설정
  background(51);  //배경 색 흰색으로 초기화
  rectMode(CENTER);
}

void draw() {
  //ON, OFF 버튼이 들어간 화면을 구성
  fill(255, 100, 100);
  rect(width/3, height/2, 50, 50);
  fill(0);
  textSize(16);
  text("ON", width/3-12, height/2+6);
  fill(100, 255, 255);
  rect(width*2/3, height/2, 50, 50);
  fill(0);
  textSize(16);
  text("OFF", width*2/3-14, height/2+6);
 
  //'ON"버튼 구역 안에서 마우스를 클릭하면 버튼색깔을 바꾸고, 49(숫자 1)를 시리얼 통신으로 송신
  if (mouseX < 100 && mouseX > 50 && mouseY < 125 && mouseY > 75 && mousePressed) {
    fill(255, 0, 0);
    rect(width/3, height/2, 50, 50);
    port.write(49);
    println("ON");
  }
  //'OFF"버튼 구역 안에서 마우스를 클릭하면 버튼색깔을 바꾸고, 50(숫자 2)를 시리얼 통신으로 송신
  if (mouseX < 200 && mouseX > 150 && mouseY < 125 && mouseY > 75 && mousePressed) {
    fill(0, 100, 255);
    rect(width*2/3, height/2, 50, 50);
    port.write(50);
    println("OFF");
  }
}
