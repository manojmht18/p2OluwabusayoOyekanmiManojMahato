void Needles() {
  // Left
  push();
  translate(215, 300);
  fill(0);
  stroke(#4B4B4B);
  ellipseMode(CENTER);
  ellipse(0, 0, 230, 230);
  push();
  fill(255);
  noStroke();
  rectMode(CENTER);
  rotate(radians(-40));
  for (int i=0; i<17; i++) {
    rect(i%2==0?-108:-110, 0, i%2==0?14:10, 2);
    rotate(radians(16.15));
  }
  pop();
  push();
  translate(0, -5);
  fill(255);
  textSize(14);
  textAlign(CENTER, CENTER);
  rotate(radians(-40));
  for (int i=0; i<9; i++) {
    push();
    translate(-88, 0);
    rotate(radians(40));
    rotate(-radians(32.30)*i);
    text(i, 0, 0);
    pop();
    rotate(radians(32.30));
  }
  pop();
  fill(255);
  textSize(9);
  textAlign(CENTER, CENTER);
  text("x1000/min", 0, 30);

  push();
  translate(0, 100);
  image(temperature, 0, -30);
  push();
  fill(255, 0, 0);
  rotate(radians(min(map(acc, 0, 1000, 45, 70), 70)));
  triangle(0, 2, 0, -2, -50, 0);
  pop();

  rectMode(CENTER);
  noStroke();
  for (int i=0; i<9; i++) {
    if (i==8 || i==7) {
      fill(255, 0, 0);
    } else {
      fill(255);
    }
    push();
    rotate(radians(map(i, 0, 8, 45, 135)));
    rect(-50, 0, 8, i%2==0?2:1);
    pop();
  }

  fill(255);
  textSize(12);
  textAlign(CENTER, CENTER);
  text("50", -35, -25);
  text("130", 35, -25);

  stroke(#4B4B4B);
  fill(0);
  ellipseMode(CENTER);
  ellipse(0, 0, 12, 12);
  pop();

  push();
  float rotateL = map(acc, 0, 8000, -40, 220);
  rotate(radians(rotateL));
  fill(255, 0, 0);
  triangle(0, 2, 0, -2, -100, 0);
  pop();
  fill(0);
  ellipseMode(CENTER);
  ellipse(0, 0, 20, 20);
  pop();

  // Right
  push();
  translate(600, 300);
  fill(0, 150);
  stroke(#4B4B4B);
  ellipseMode(CENTER);
  ellipse(0, 0, 230, 230);
  push();
  fill(255);
  noStroke();
  rectMode(CENTER);
  rotate(radians(-40));
  for (int i=0; i<26; i++) {
    rect(i%2==0?-108:-110, 0, i%2==0?14:10, 2);
    rotate(radians(10.3));
  }
  pop();
  push();
  translate(0, -5);
  fill(255);
  textSize(14);
  textAlign(CENTER, CENTER);
  rotate(radians(-40));
  for (int i=0; i<13; i++) {
    push();
    translate(-88, 0);
    rotate(radians(40));
    rotate(-radians(21.8)*i);
    text(i*20, 0, 0);
    pop();
    rotate(radians(21.8));
  }
  pop();

  push();
  translate(0, 100);
  if (fuel<=420*0.1) {
    image(fuelLowIcon, 0, -70);
  } else {
    image(fuelIcon, 0, -70);
  }
  fill(255);
  textSize(10);
  textAlign(CENTER, CENTER);
  if(mikm) {
    text(int(fuel)+" mi", 0, -30);
  } else {
    text(int(fuel/0.62137)+" km", 0, -30);
  }
  
  push();
  fill(255, 0, 0);
  rotate(radians(map(fuel, 0, 420, 45, 135)));
  triangle(0, 2, 0, -2, -50, 0);
  pop();

  rectMode(CENTER);
  noStroke();
  for (int i=0; i<9; i++) {
    if (i==0 || i==1) {
      fill(255, 0, 0);
    } else {
      fill(255);
    }
    push();
    rotate(radians(map(i, 0, 8, 45, 135)));
    rect(-50, 0, 8, i%2==0?2:1);
    pop();
  }

  fill(255);
  textSize(14);
  textAlign(CENTER, CENTER);
  text("E", -35, -25);
  text("F", 35, -25);

  stroke(#4B4B4B);
  fill(0);
  ellipseMode(CENTER);
  ellipse(0, 0, 12, 12);
  pop();


  push();
  float rotateR = map(velocity, 0, 260, -40, 220);
  rotate(radians(rotateR));
  fill(255, 0, 0);
  triangle(0, 2, 0, -2, -100, 0);
  pop();
  fill(0);
  ellipseMode(CENTER);
  ellipse(0, 0, 20, 20);
  pop();
}
