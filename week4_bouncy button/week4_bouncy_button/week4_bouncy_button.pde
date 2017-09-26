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
int chgG = -55;
int chgB = 55;
//int bH = 10;
//int bW = 50;
//int b1x = 150;
//int b1y = 200;
//int b2x = 700;
//int b2y = 450;
//int b3x = 600;
//int b3y = 110;

boolean button = false;
boolean moving = true;
//boolean brick1 = true;
//boolean brick2 = true;
//boolean brick3 = true;


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

/*if(brick1==true){
  fill(255,100,100);
  rect(b1x,b1y,bW,bH);}

if(brick2==true){
  rect(b2x,b2y,bW,bH);}
  
  if(brick3==true){
  rect(b3x,b3y,bW,bH);}
  */
  
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
if (moving == true) {
  x2+=speedX;
  y2+=speedY;
}
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
   
   //if(dist(x2,y2,b1x+0.5*bW,b1y+0.5*bH)<r2)
//{ brick1=false;}
   
    
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
    //if((x2==b1x)&&(y1==b1y)){
     // brick1=false;}



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

void keyPressed(){
moving = !moving;


}