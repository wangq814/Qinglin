import processing.pdf.*;

Line myLine = new Line();

Line[] allLines = new Line[1000];

int left = 90;
int right = 610;
int w;    
int d = 400;

float theta = 0;  
float amplitude = 10;  
float period = 100.0;  
float dx;  
float[] yvalues;  

int h = 450;
float inc = 0.06;
float inc1 = 0.01;
int density = 20;
float znoise = 0.0;
float a = 0;
float r = 100;



void setup(){
  size(700,900,PDF,"planet.pdf");
  size(700,900);
  //noStroke();
    w = width;
  dx = (TWO_PI / period) ;
  yvalues = new float[w];
  


  for(int i = 0; i<allLines.length;i++){
    allLines[i] = new Line();
    }
}

void draw(){
  if (frameCount < 20){
    stroke(255);
  float xnoise = 0;
  float ynoise = 0;
  for (int y = 0; y < height; y += density){
    for(int x = 0; x < width; x += density){
      float n = noise(xnoise,ynoise,znoise)*255;
      if(dist(x,y,width/2,height/2)< 200){
        
        fill(n,n,255 );
        stroke(255);
        rect(x,y,density,density);
      }else{
      fill(random(n,255),random(180,255),255 );}
      rect(x,y,density,density);
    
      xnoise += inc;
    }
    xnoise = 0.0;
   
    ynoise += inc;
  }
  
  
    for (int y = 0; y < height; y += density*0.1){
    for(int x = 0; x < width; x += density*0.1){
      float n = noise(xnoise,ynoise,znoise)*255;
      if(dist(x,y,width/2,height/2)< 255){
        
       fill(n+40,n+40,n+180);
       noStroke();
        rect(x-10,y,density,density);
      }
    
      xnoise += inc1;
    }
    xnoise = 0;
   
    ynoise += inc1;
  }
  znoise += inc1;
  
   for(int i = 0; i<allLines.length;i++){
    allLines[i].display();
    allLines[i].move();
    } 
   
  }  
    
  else {
    exit();
  
  
  
}
  //reference : https://processing.org/examples/sinewave.html
  //calcWave();
  //renderWave();

}


void calcWave() {
  
  theta += 0.1;

  
  float x = theta;
  for (int i = 0; i < yvalues.length; i++) {
    yvalues[i] = sin(x)*amplitude;
    x+=dx;
  }
}

void renderWave() {
  noStroke();
  fill(255);
  for (int x = left; x <= right; x++) {
    ellipse(x, h+yvalues[x], 4, 4); 
    //ellipse(x, h+30+yvalues[x], 6, 6); 
  }
  for (int x = left ; x <= right ; x++) {
    ellipse(x , h + 10 + yvalues[x], 5, 5); 
  }
   for (int x = left ; x <= right ; x++) {
    ellipse(x , h+ 25 + yvalues[x], 5, 5); 
  }
   for (int x = left + 3; x <= right - 3; x++) {
    ellipse(x , h + 45 + yvalues[x], 6, 6); 
  }
   for (int x = left + 5; x <= right - 5; x++) {
    ellipse(x , h + 65 + yvalues[x], 6, 6); 
  }
   for (int x = left + 18; x <= right - 18; x++) {
    ellipse(x , h + 100 + yvalues[x], 6, 6); 
  }
  
   for (int x = left + 35; x <= right - 35; x++) {
    ellipse(x , h + 140 + yvalues[x], 6, 6); 
  }
   for (int x = left + 80; x <= right - 80; x++) {
    ellipse(x , h + 190 + yvalues[x], 6, 6); 
  }
   for (int x = left + 150; x <= right - 150; x++) {
    ellipse(x , h + 240 + yvalues[x], 7, 7); 
  }
   
  
 
}