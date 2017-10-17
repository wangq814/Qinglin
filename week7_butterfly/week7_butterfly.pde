boolean cKeyDown = false;
boolean rKeyDown = false;
boolean kKeyDown = false;

Butterfly myButterfly = new Butterfly();
CrazyButterfly myCrazyButterfly = new CrazyButterfly();

void setup(){
  size(800,600);
  
}


void draw(){
 if(kKeyDown){
   myCrazyButterfly.display();
 }else{
 myButterfly.display();
  if(cKeyDown){
 myButterfly.circle(); 
  }
  if(rKeyDown){
    myButterfly.mess();
  }
 }
  
}

void keyPressed() {
  if (key == 'c') {
    cKeyDown = true;
  }
  if (key == 'r') {
    rKeyDown = true;
  }
  if (key == 'k'){
    kKeyDown = true;
  } 
}
void keyReleased() {
  if (key == 'c') {
    cKeyDown = false;
  }
 if (key == 'r'){
   rKeyDown = false;
 }
 if (key == 'k'){
    kKeyDown = false;
  } 
}