Butterfly myButterfly = new Butterfly();

Butterfly[] num = new Butterfly[50];

void setup() {
  size(1000, 600);
  noStroke();
  for (int i = 0;i<num.length;i++){
    num[i]= new Butterfly();
  }
  }
  


void draw() {
  background(255);
  for (int i = 0;i<num.length;i++){
  num[i].display();
  num[i].move();
  }
  }