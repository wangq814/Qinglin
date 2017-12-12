import processing.sound.*;
SoundFile popping;

int num = 50;
boolean bubble = true;
float x, y;

Bubble[] bubbles = new Bubble[num];



void setup() {
  //fullScreen();
  size(500, 800, P3D);
  popping = new SoundFile(this, "popping.mp3");

  for (int i=0; i<num; i++) {
    bubbles[i]=new Bubble();
    x = bubbles[i].x;
    y = bubbles[i].y;
  }
}


void draw () {

  background(#CEE0FF);
  lights();
  translate(width/2, height/2, -250);

  for (int i=0; i<num; i++) {
    bubbles[i].move();
    bubbles[i].display();
    sphereDetail(30);
  }
}


void mouseClicked() {
  for (int i=0; i<num; i++) {
    Bubble b = bubbles[i];
    float bubX = screenX(b.x+b.n, b.y, b.z);
    float bubY = screenY(b.x+b.n, b.y, b.z);
    if (dist(mouseX, mouseY, bubX, bubY)< 50) {
      bubbles[i].pop();
      popping.play();
    }
  }
}