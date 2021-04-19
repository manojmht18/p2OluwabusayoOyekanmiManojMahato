boolean running=false;
float velocity=0;
float acc=0;
boolean braking=false;
boolean cruiseMode=false;
float fuel=420;
float accumMiles=0;

void Engine() {
  if (running) {   
    if(mikm) {
      velocity += 1 * ((270-velocity)/600);  
    } else {
      velocity += 1.6 * ((270-velocity)/600);  
    }
  
    if (velocity>260) {
      velocity=260;
    }

    acc+= 10 * ((8000-acc)/8000);
    if (acc>6000) {
      acc=6000;
    }
  } else {
    if (braking) {

      velocity*=0.95;
      if (acc<1000) {
        acc*=0.99;
      } else {
        acc*=0.9;
      }
    } else {
      if (!cruiseMode) {
        velocity=velocity*0.995;
        acc*=0.99;
      }
    }

    if (velocity<0) {
      velocity=0;
    }
    if (acc<0) {
      acc=0;
    }
  }
  if (mode!="parking" && acc<1000) {
    acc+= 100 * ((1000-acc)/2000);
  }

  float mS = ((velocity/60)/60)/frameRate;
  fuel -= mS;
  accumMiles+= mS;
}
