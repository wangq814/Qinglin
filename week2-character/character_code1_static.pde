int Radius = 90;
int axis = 480;
int x = 450;
int y = 140;

size(960,600);
noStroke();
background(250,200,200);

fill(0,0,0);
ellipse(axis,370,180,180);

//ears
noStroke();
fill(0);
ellipse(405,190,45,45);
ellipse(555,190,45,45);

//face
fill(255,255,255);
ellipse(axis,250,Radius*2,Radius*2);
ellipse(axis,280,200,140);

//crown
fill(255,250,150);
beginShape();
vertex(x,y+40);
vertex(x,y);
vertex(x+17,y+20);
vertex(axis,y-10);
vertex(x+43,y+20);
vertex(x+60,y);
vertex(x+60,y+40);
endShape();
arc(axis,y+35,60,40,0,PI);




//body
fill(255,255,255);
rect(390,370,180,40);
ellipse(axis,410,180,100);
fill(0);
ellipse(axis,370,180,35);


//feet
ellipse(440,440,60,60);
ellipse(520,440,60,60);
noFill();
stroke(60);
strokeWeight(26);
ellipse(440,448,25,25);
ellipse(520,448,25,25);

//mouth
noStroke();
fill(255,80,100);
arc(axis, 310, 30, 60, -0.15, PI, CHORD);

//nose
stroke(100);
strokeWeight(7);
strokeJoin(ROUND);
triangle(475,285,485,285,axis,290);

//eyes
translate(520,260);
rotate(radians(-25));
noStroke();
fill(0);
ellipse(0,0,40,60);

translate(-75,-35);
rotate(radians(50));
fill(0);
ellipse(0,0,40,60);

stroke(255);
strokeWeight(5);
fill(0);
ellipse(7,5,12,12);
ellipse(75,-25,12,12);

//arms
noStroke();
translate(-15,95);
rotate(radians(10));
ellipse(0,0,95,50);

translate(173,-82);
rotate(radians(25));
ellipse(0,0,95,50);

//flag
translate(30,0);
rotate(radians(-120));
strokeWeight(3);
stroke(255);
line(0,0,100,0);
noStroke();
quad(100,0,100,80,40,80,40,0);
fill(237,28,37);
quad(100,0,100,80,90,80,90,0);
fill(242,109,34);
quad(90,0,90,80,80,80,80,0);
fill(246,237,31);
quad(80,0,80,80,70,80,70,0);
fill(13,93,53);
quad(70,0,70,80,60,80,60,0);
fill(35,148,209);
quad(60,0,60,80,50,80,50,0);
fill(75,45,127);
quad(50,0,50,80,40,80,40,0);