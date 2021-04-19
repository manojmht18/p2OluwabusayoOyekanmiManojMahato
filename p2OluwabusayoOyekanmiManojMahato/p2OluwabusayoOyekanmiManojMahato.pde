ArrayList<Button> listButtons;
Button selected;
boolean doorOpen=true;
boolean hide=true;
boolean mikm=true;

void setup() {
  size(1200, 700);
  LoadImages();
}

void keyPressed() {
  if (key=='r')LoadImages();
}

void draw() {
  imageMode(CENTER);
  image(back, width/2, height/2);

  Signals();
  Engine();
  Needles();


  for (Button b : listButtons) {
    b.draw();
  }
  if (selected!=null) {
    PressingEvent(selected);
  }

  if (cruiseMode) {
    image(cruiseIcon, 400, 310);
  }

  fill(255);
  textAlign(CENTER, CENTER);
  textSize(34);
  text(int(velocity), 400, 250);
  textSize(16);
  if(mikm) {
    text("mph", 400, 280);
    text("mph", 600, 260);
  } else {
    text("kmh", 400, 280);
    text("kmh", 600, 260);
  }
  textSize(14);
  text("mi/km", 95, 600);
  text("Cruise Control", 200, 600);
  text("Brake", 660, 620);
  text("Accelerator", 740, 675);

  textSize(12);
  text("70°F", 310, 200);
  text((hour()>12?hour()-12:hour())+":"+nf(minute(), 2)+(hour()>12?"PM":"AM"), 490, 200);

  Mode();

  if (hide) {
    image(battery, 420, 200);
    image(oil, 380, 200);
    image(headlight, 400, 170);
    image(tire, 215, 260);
    image(seat, 480, 380);
  }

  textAlign(RIGHT, BOTTOM);
  textSize(16);
  //text(int(accumMiles)+"mi", width, height);

  if (doorOpen) {
    image(door, 350, 380);
  }

  LCD();
}

void ReleaseEvent(Button b) {
  switch(b.id) {
  case "Left Signal":
    if (!warningSignal) {
      leftSignal=!leftSignal;
      rightSignal=false;
    }
    break;
  case "Right Signal":
    if (!warningSignal) {
      leftSignal=false;
      rightSignal=!rightSignal;
    }
    break;
  case "Accelerator":
    running = false;
    cruiseMode = false;
    break;
  case "Brake":
    braking = false;
    cruiseMode = false;
    break;
  case "MiKM":
    mikm = !mikm;
    break;
  case "Cruise":
    if (!cruiseMode && int(velocity)>0) {
      cruiseMode = true;
    } else if (cruiseMode) {
      cruiseMode = false;
    }
    break;
  case "Engine":
    if (mode=="parking") {
      mode = "drive";
    } else {
      mode = "parking";
    }  
    break;
  case "P":
    mode = "parking";  
    break;
  case "R":
    mode = "reverse";  
    break;
  case "N":
    mode = "neutral";  
    break;
  case "D":
    mode = "drive";  
    break;
  case "Warning":
    leftSignal=false;
    rightSignal=false;
    warningSignal=!warningSignal;
    break;
  case "Map":
    mapOption = !mapOption;
    break;
  case "Map2":
    if (!mapOption) {
      mapOption = true;
    }
    break;
  case "Home":
    mapOption = false;
    break;
  case "Close":
    doorOpen = !doorOpen;
    break;
  case "Hide":
    hide = !hide;
    break;
  }
}

void PressingEvent(Button b) {
  switch(b.id) {
  case "Accelerator":
    if (mode=="drive") {
      running = true;
    }
    break;
  case "Brake":
    braking = true;
    break;
  }
}

void mousePressed() {
  for (Button b : listButtons) {
    if (b.CheckMouse()) {
      selected = b;
      break;
    }
  }
}
void mouseReleased() {
  if (selected!=null) {
    ReleaseEvent(selected);
    selected = null;
  }
}
