PImage homepage1;
PImage homepage2;
PImage homepage3;
PImage homepage4;
PImage start1;
PImage GarbageDream1;
PImage background1;
PImage background2;
PImage battery;
//PImage coke;
//PFont ArcadeClassic;
int page = 0;
int time;
int elapsedTime;
int timeLeft;

boolean startGD = false;


void setup() {
  size(320, 240);
  //fullScreen();




  homepage1 = loadImage("homepage1.png");
  start1 = loadImage("start1.png");
  GarbageDream1 = loadImage("GarbageDream1.png");
}


void draw() {

  if (startGD) {
    page =1;
    elapsedTime = millis() - time;
    print(elapsedTime);
  }

  imageMode(CENTER);
  //scale(0.5);
  background(255);

  if (page == 0) {

    image(homepage1, width/2, height/2);

    rectMode(CENTER);
    //fill(255,50);

    //rect(160,160,80,20);

    if ((mouseX<160+40)&&(mouseX>160-40)&&(mouseY<160+10)&&(mouseY>160-10)) {
      image(start1, width/2, height/2);
    }
  }

  if (page == 1) {
    //image(battery, width/2,height/2);
    background(#8EE5FF);
    image(GarbageDream1, width/2, height/2);
  }

  //textFont(arcade);
  //text("start", width/2, 400);
  //image(coke, width/2,height/2);
}



void mouseClicked() {
  if ((mouseX<160+40)&&(mouseX>160-40)&&(mouseY<160+10)&&(mouseY>160-10)) {
    startGD = true;
    time = round(millis()/1000);
    
    //fill(0);
    elapsedTime = round(millis()/1000) - time;
    timeLeft = 20 - elapsedTime;
    //text(20-elapsedTime, 160,50);
    print(time);
  }
}