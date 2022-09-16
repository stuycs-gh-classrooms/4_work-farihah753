size(640,320);
//TWW LOGO
strokeWeight(4);
stroke(0, 0, 255);
line(320, 60, 320, 240);
line(250, 60, 390, 60);
stroke(0, 255, 255);
line(250, 60, 250, 240);
line(250, 270, 320, 60);
line(320, 60, 390, 240);
line(390, 270, 390, 60);

//BOOK Image
stroke(#713507);
fill(#F2E4DA);
arc(260, 250, 120, 70, PI, PI + PI);
arc(380, 250, 120, 70, PI, PI + PI);
rect(200,250,240,50);
line(320,250,320,300);
strokeWeight(2);
for(int i = 250; i < 300;) {
  i = i + 10;
  line(200,i,440,i);
  //line(400,i,440,i);
}

//stars 
strokeWeight(1.999999);
stroke(#FFFCA7);
line(200, 60, 240, 60);
line(220,40,220,80);
strokeWeight(0.99999);
line(420, 200, 450, 200);
line(435,185,435,215);
