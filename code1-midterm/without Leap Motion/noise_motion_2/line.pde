class Line {
  float x;
  float y;
  float speedY;
  float w = 5;
  int displayColor = 255;
  
  Line(){
    x = random(width);
    y = random(height);
    speedY = random(1,20);
    
  }
  
  void display() {
    //fill(displayColor);
    stroke(displayColor);
    strokeWeight(3);
    //line(x,y,x,y+random(0,100));
    line(x,y,x,y);
    
  }
  
  
  void move(){
    y+=speedY;
    if(y> height) {
      y = random(0);
    }
    
    
    
  }
}