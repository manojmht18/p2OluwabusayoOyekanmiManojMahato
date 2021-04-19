// Signals
boolean leftSignal=false;
boolean rightSignal=false;
boolean warningSignal=false;
boolean showSignal=false;
float timer;

void Signals() {
  // Left
  if (leftSignal || warningSignal) {
    if (timer<millis()) {
      timer = millis()+500;
      showSignal = !showSignal;
    }
    if (showSignal) {
      image(signalL, 300, 170);
    } else {
      image(signalLD, 300, 170);
    }
  } else {
    image(signalLD, 300, 170);
  }

  // Right
  if (rightSignal || warningSignal) {
    if (timer<millis()) {
      timer = millis()+500;
      showSignal = !showSignal;
    }
    if (showSignal) {
      image(signalR, 500, 170);
    } else {
      image(signalRD, 500, 170);
    }
  } else {
    image(signalRD, 500, 170);
  }
}
