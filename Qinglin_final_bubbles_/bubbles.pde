class Bubble {
  float x, y, z;
  float accel;
  float vol;
  float move;
  float xoff;
  float n;
  float d = 50;


  Bubble() {

    x=random(-500, 500);
    y=random(800, 900);
    z=random(-300, 300);
    xoff = random(100);
  }

  void move() {
    //vol = 2;
    //accel = .1;
    accel = random(0, 0.01);
    y-= vol;
    if (y<-250) {
      y=800;
      vol = random(1);
      popping.play();
      d = 50;
    }
    //if ((x<-1000) || (x>1000)) {
     // x = 1000;
    //}
    vol += accel;
    xoff += 0.005;
    n = noise(xoff) * 500;
  }

  void display() {
    
    pushMatrix();
    noStroke();
    translate(x + n, y, z);
    fill(random(200, 255), random(200, 255), random(200, 255), 50);
    sphere(d);
    popMatrix();
  }
  
  void pop(){
    d -= 25;
    
    }
    
    
 
}