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
    displayColor = color(200,255,255);
  } 
  
  void display() {
   fill(displayColor);
    //triangle(x-w/2, y, x+w/2, y, x, y- w);
    ellipse( x, y, 100, 20);
    quad( x-30,y,x,y,x,y-35,x-45,y-35);
    ellipse(x-20,y-35,50,50);
    quad( x,y,x+30,y,x+55,y-25,x,y-35);
    ellipse(x+30,y-40,60,60);
    fill(255);
    ellipse(x-20,y-35,40,40);
    ellipse(x+30,y-40,50,50);
  }


  void move() {
    x+=speedX;
    if (x > width) {
      x = 0;
    }
  }
}
