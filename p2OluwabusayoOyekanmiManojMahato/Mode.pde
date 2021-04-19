String mode="parking";

void Mode() {
  push();
  translate(380, 380);
  switch(mode) {
  case "parking":
    translate(0, 0);
    break;
  case "reverse":
    translate(25, 0);
    break;
  case "neutral":
    translate(50, 0);
    break;
  case "drive":
    translate(75, 0);
    break;
  }
  fill(0);
  stroke(#FFDE71);
  rectMode(CENTER);
  rect(0, 2, 20, 25, 5);
  pop();

  fill(255);
  textAlign(CENTER, CENTER);
  textSize(16);
  text("P", 380, 380);
  text("R", 405, 380);
  text("N", 430, 380);
  text("D", 455, 380);
}
