class Butterfly {
  float x;
  float y;
  float speedX;
  float w = 100;
  float h = 20;
  //float r1 = 
  //float r2 = 
  color displayColor; 

  Butterfly() {
    x = random(width);
    y = random(height);
    speedX = random(5, 10);
    displayColor = color(100, 100, 255);
  } 
  
  void display() {
    fill(displayColor);
    //triangle(x-w/2, y, x+w/2, y, x, y- w);
    ellipse( x, y, 100, 20);
    quad( x-30,y,x,y,x,y-35,x-45,y-35);
    ellipse(x-20,y-35,50,50);
  }


  void move() {
    x+=speedX;
    if (x > width) {
      x = random(0);
    }
  }
}