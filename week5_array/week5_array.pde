int numberOfBalls = 50;
int d = 20;
int rectX = 400;
int rectY = 300;
int rectW = 150;
int rectH = 100;

float[] x = new float[numberOfBalls];
float[] y = new float[numberOfBalls];
float[] speedX = new float[numberOfBalls];
float[] speedY = new float[numberOfBalls];



void setup(){
  size(800,600);
  for(int i = 0; i < x.length;i++){
    x[i]=random(d/2,rectX-d/2);
    x[i]=random(rectX+rectW+d/2,width-d/2);
    y[i]=random(d/2,rectY-d/2);
    y[i]=random(rectY+rectH+d/2,height-d/2);
    speedX[i]=random(4,6);
    speedY[i]=random(3,5);
  
  
  }
} 
 

void draw(){
   background(0);
   
  
  
    for(int i = 0; i < x.length;i++){ //for reference: https://stackoverflow.com/questions/18864344/processing-creating-multiple-ellipses-with-for-loop
     
      
      if((x[i]>rectX-d/2)&&(x[i]<rectX+rectW+d/2)&&(y[i]>rectY-d/2)&&(y[i]<rectY+rectH+d/2)){
     
    
    if ((x[i] < rectX)||(x[i] > rectX + rectW)||(x[i] > rectX + rectW)){
      speedX[i] *= -1;
   
    } else {
      
      speedX[i]*=-1;
     speedY[i]*=-1;
      //y[i] = rectY + rectH + d/2;
    }
    speedX[i]*=1;
     speedY[i]*=1;
      }
      
      
      if(x[i]>=width-d/2||x[i]<=d/2){
        speedX[i]*=-1;
      }
   
   if(y[i]>=height-d/2||y[i]<=d/2){
        speedY[i]*=-1;
      }
  
  
    
  
  
  ellipse(x[i],y[i],d,d);
   x[i]+=speedX[i];
  y[i]+=speedY[i];
  
    
    
    rect(rectX,rectY,rectW,rectH);

}
    }


    