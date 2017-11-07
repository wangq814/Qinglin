import processing.pdf.*;
import de.voidplus.leapmotion.*;

PFont SourceCodeVariable;
PImage Frame;
float brightness = 100;
float size = 115;
   

LeapMotion leap;

void setup() {
  size(900,900, OPENGL);
  leap = new LeapMotion(this);
  SourceCodeVariable = createFont("SourceSansPro-BlackIt",115);
  
  textFont(SourceCodeVariable);
  

}

void draw() {
  //background(0);
  Frame = loadImage("image/frame-grey.png");
  
  int fps = leap.getFrameRate();
  //text(fps + " fps", 20, 20);

  for (Hand hand : leap.getHands ()) {
   
    PVector fingerIndex = hand.getIndexFinger().getRawPositionOfJointTip();
    PVector fingerThumb = hand.getThumb().getRawPositionOfJointTip();
    PVector fingerMiddle = hand.getMiddleFinger().getRawPositionOfJointTip();
    PVector fingerRing = hand.getRingFinger().getRawPositionOfJointTip();
    PVector fingerPinky = hand.getPinkyFinger().getRawPositionOfJointTip();
    
    
   
    
    
    /*stroke(255);
    strokeWeight(0.1);
    scale(5);
    fill(random(0,255),random(0,255),random(0,255),50);
    triangle(fingerIndex.x+100,fingerIndex.y,fingerMiddle.x+100,fingerMiddle.y,fingerThumb.x+100,fingerThumb.y);
    fill(random(0,255),random(0,255),random(0,255),50);
    triangle(fingerIndex.x+100,fingerIndex.y,fingerRing.x+100,fingerRing.y,fingerThumb.x+100,fingerThumb.y);
    fill(random(0,255),random(0,255),random(0,255),random(0,255));
    triangle(fingerIndex.x+100,fingerIndex.y,fingerPinky.x+100,fingerPinky.y,fingerThumb.x+100,fingerThumb.y);
    fill(random(0,255),random(0,255),random(0,255),random(0,255));
    triangle(fingerThumb.x+100,fingerThumb.y,fingerRing.x+100,fingerRing.y,fingerPinky.x+100,fingerPinky.y);
    fill(random(0,255),random(0,255),random(0,255),random(0,255));
    triangle(fingerRing.x+100,fingerRing.y,fingerMiddle.x+100,fingerMiddle.y,fingerThumb.x+100,fingerThumb.y);
    fill(random(0,255),random(0,255),random(0,255),random(0,255));
    triangle(fingerPinky.x+100,fingerPinky.y,fingerMiddle.x+100,fingerMiddle.y,fingerThumb.x+100,fingerThumb.y);

    */
    
    /*
    fill(random(0,255),random(0,255),random(0,255),random(0,255));
    triangle(fingerPinky.x+100,fingerPinky.y-100,fingerRing.x+100,fingerMiddle.y,fingerThumb.x+100,fingerThumb.y);
    fill(random(0,255),random(0,255),random(0,255),random(0,255));
    triangle(fingerPinky.x+100,fingerPinky.y-100,fingerPinky.x+100,fingerMiddle.y,fingerThumb.x+100,fingerThumb.y);
    fill(random(0,255),random(0,255),random(0,255),random(0,255));
    triangle(fingerPinky.x+100,fingerPinky.y-100,fingerMiddle.x+100,fingerMiddle.y,fingerRing.x+100,fingerRing.y);
    fill(random(0,255),random(0,255),random(0,255),random(0,255));
    triangle(fingerPinky.x+100,fingerPinky.y-100,fingerIndex.x+100,fingerIndex.y,fingerThumb.x+100,fingerThumb.y);
    fill(random(0,255),random(0,255),random(0,255),random(0,255));
    triangle(fingerPinky.x+100,fingerPinky.y-100,fingerIndex.x+100,fingerIndex.y,fingerRing.x+100,fingerRing.y);
    fill(random(0,255),random(0,255),random(0,255),random(0,255));
    triangle(fingerPinky.x+100,fingerPinky.y-100,fingerIndex.x+100,fingerIndex.y,fingerMiddle.x+100,fingerMiddle.y);
    
    */
    
    
    /*float c1off = 0;
    for(float c1 = 200; c1 <360;c1++){
      float c2off = 0;
      for(float c2 = 200; c2 <360;c2++){
        float hue = noise(c1off,c2off)*360;
        c1off+= 1;
      
      
     */
    
    //strokeWeight(0.1);
    scale(5);
    noStroke(); 
    colorMode(HSB,360,100,100);
    fill(200,10,10);
    
    ellipse(width/2,height/2,300,300);
    
    fill(random(190,310),40,100,50);
    triangle(fingerIndex.x+90,fingerIndex.y,fingerMiddle.x+100,fingerMiddle.y,fingerThumb.x+100,fingerThumb.y);
   
    triangle(fingerIndex.x+90,fingerIndex.y,fingerRing.x+90,fingerRing.y,fingerThumb.x+100,fingerThumb.y);
    
    //triangle(fingerIndex.x+90,fingerIndex.y,fingerPinky.x+90,fingerPinky.y,fingerThumb.x+100,fingerThumb.y);
    
    //triangle(fingerThumb.x+90,fingerThumb.y,fingerRing.x+90,fingerRing.y,fingerPinky.x+100,fingerPinky.y);
    
    triangle(fingerRing.x+90,fingerRing.y,fingerMiddle.x+90,fingerMiddle.y,fingerThumb.x+100,fingerThumb.y);
    
    triangle(fingerPinky.x+90,fingerPinky.y,fingerMiddle.x+90,fingerMiddle.y,fingerThumb.x+100,fingerThumb.y);
  //c2off += 0.01;
  //c1off += 0.01;
   //   }

}
  
  
  
  if (keyPressed) {
    for(int fontY = 350; fontY< 650; fontY += 5){
       //float fontY = 50;
    
    textMode(SHAPE);
    textAlign(CENTER, CENTER);
    
    
    //fill(360,10,brightness);
     //brightness -= 0.3;
     
    //fill(150,fontY*0.05,100);
    fill(0,0,100);
    textFont(SourceCodeVariable,size);
    text("RESIST",width/2-3,fontY-2.5);
    //fill(fontY*0.8+200);
    
    
    fill(255,fontY*0.1,70);
    textFont(SourceCodeVariable,size);
    text("RESIST",width/2,fontY);
    
    fill(0,0,100);
    textFont(SourceCodeVariable,115);
    text("RESIST",width/2,645);
    
    //size +=1;
    //fill(360);
    //textFont(SourceCodeVariable,115);
    //text("RESIST",width/2,695);
    }
  }
    
   
    
    


if(mousePressed){

image(Frame,0,0);
}
  }

  
  
  void keyPressed() {
  if (key == 'B' || key == 'b') {         // When 'B' or 'b' is pressed,
    beginRecord(PDF, "resist30.pdf");        // start recording to the PDF 
    background(255);                      // Set a white background
  } else if (key == 'E' || key == 'e') {  // When 'E' or 'e' is pressed,
    endRecord();                          // stop recording the PDF and
    exit();                               // quit the program
  }
}