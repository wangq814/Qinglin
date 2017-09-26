

float x1;
float y1;
float x2;
float y2;
float r1;
float r2;
float speedX;
float speedY;

int R = 100;
int G = 255;
int B = 0;
int chgR = 25;
int chgG= -55;
int chgB = 55;


boolean button = false;



void setup() { 
  size(800, 600); 

  x1 = 400;
  y1 = 300;
  x2 = 50;
  y2 = 50;
  r1 = 80;
  r2 = 30;
  speedX = 2;
  speedY = 5;
} 


void draw() {
  background(0);
  
fill(mouseX,100,mouseY);
rect(mouseX,mouseY,100,15);


//big circle
  if ((dist(mouseX, mouseY, x1, y1)<r1)||(dist(x1, y1, x2, y2)<=r1+r2)) {
    button = true;
  } else {
    button = false;
  }

  if (button==true) {
    if (mousePressed) {
      fill(255);
    } else {
      fill(255, 200, 200);
    }
  } else {
    fill(255);
  }
  
  ellipse(x1, y1, r1*2, r1*2);

//small circle
  x2+=speedX;
  y2+=speedY;

  if ((x2<30)||(x2>width)) {
    speedX*=-1;
  }
  if ((mouseX<x2)&&(x2<mouseX+100)&&(y2>mouseY-r2)){
     speedX*=1;
   speedY*=-1;}
     
  if (y2<30) {
    speedY*=-1;
  }

  if (dist(x1, y1, x2, y2)<(r1+r2)) {
    speedX *= -1;
    speedY *= -1;
   
    
    if (R<0||R>255) {
      chgR*=-1;
    }
     if (G<0||G>255) {
      chgG*=-1;
    }
     if (B<0||B>255) {
      chgB*=-1;
    
    } 
      R+=chgR;
       G+=chgG;
        B+=chgB;
    
    
  }


  fill(R, G, B);
  ellipse(x2, y2, 2*r2, 2*r2);
}

void mousePressed() {
  if (button == true) {
    
    if (R<0||R>255) {
      chgR*=-1;
    }
     if (G<0||G>255) {
      chgG*=-1;
    }
     if (B<0||B>255) {
      chgB*=-1;
    
    } 
      R+=chgR;
       G+=chgG;
        B+=chgB;
    }
    


}