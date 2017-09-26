boolean button = false;
boolean buttonMoving = false;
float x = 300;
float y = 200;
float d = 100;
float speedX = 1.2;
float speedY =3;


void setup(){
  size(600,400);
  
}




void draw (){
  background(y,199,x);
  if(sqrt(sq(height-2*mouseY)+sq(width-2*mouseX))<d){  //because of Pythagoras' theorem
    button=true;
    
    
  }else{
    button=false;
  }
  
  if (button==true){
    fill(0);
   noStroke();
}else{
  background(0);
  noStroke();
  fill(mouseX,199,mouseY);
}

ellipse(x,y,d,d);



if (buttonMoving == true){
  if((x>width-50)||(x<50)){
  speedX=speedX*-1;
  }
  if((y>height-50)||(y<50)){
  speedY=speedY*-1;
  }
    
  x=x+speedX;
  y=y+speedY;
  
noStroke();
  fill(x,199,y);
  ellipse(x,y,d,d);
} 
}
  
  void mousePressed(){
   
  if (sqrt(sq(height-2*mouseY)+sq(width-2*mouseX))<d){
    buttonMoving = true;
    
  }
  }