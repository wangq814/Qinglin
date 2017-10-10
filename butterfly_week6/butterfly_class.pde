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
    x += random(width);
    y += random(height);
    speedX = random(5, 10);
    displayColor = color(#E3C1FF);
  } 
  
  void display() {
    noStroke();
    fill(displayColor);
    //triangle(x-w/2, y, x+w/2, y, x, y- w);
    
    quad( x-30,y,x,y,x,y-35,x-45,y-35);
    ellipse(x-20,y-35,50,50);
    quad( x,y,x+30,y,x+55,y-25,x,y-35);
    ellipse(x+30,y-40,60,60);
    fill(#FFE3FA);
    ellipse(x-20,y-35,35,35);
    ellipse(x+30,y-40,45,45);
    fill(displayColor);
    stroke(255);
    strokeWeight(2);
    ellipse( x, y, 100, 20);
    stroke(displayColor);
    strokeWeight(4);
    line(x+46,y,x+60,y-15);
    line(x+44,y,x+50,y-18);
  }


  void move() {
    x+=speedX;
    if (x > width) {
      x = 0;
    }
  }
}