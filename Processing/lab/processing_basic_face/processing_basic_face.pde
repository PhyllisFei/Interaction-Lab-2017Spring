size(500,500);
background(100);
stroke(0);
strokeWeight(3);

// left eye
fill(0);
ellipse(250-150,250,100,100);
fill(255);
noStroke();
ellipse(250-150,250,20,100);
ellipse(250-150,250,100,20);

// right eye
fill(0);
ellipse(250+150,250,100,100);
fill(255);
noStroke();
ellipse(250+150,250,20,100);
ellipse(250+150,250,100,20);

//mouth
noFill();
stroke(255,0,0);
strokeWeight(1);
//ellipse(250,250,350,350);

stroke(255);
strokeWeight(5);
arc(250,250,350,350,PI*0.4,PI*0.6);
//arc(x,y,w,h,startAngle,endAngle);