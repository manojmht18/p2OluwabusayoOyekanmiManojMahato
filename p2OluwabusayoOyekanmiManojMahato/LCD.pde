boolean mapOption=false;
float progress = 0;
int timerTrip=millis();
int totalPauseTime=0;
int iniPauseTime=0;
int endpauseTime=0;
int speedlimit=0;

void LCD() {
  textAlign(CENTER, CENTER);
  textSize(12);
  text("70°F", width-50, 390);
  text("70°F", width-360, 390);
  text((hour()>12?hour()-12:hour())+":"+(nf(minute(), 2))+(hour()>12?"PM":"AM"), width-60, 200);
  image(tmp, width-70, 391);
  image(tmp, width-378, 391);
  if (mode=="parking") {
    endpauseTime=millis();
  } else {
    if (endpauseTime>0) {
      totalPauseTime+=endpauseTime-iniPauseTime;
      endpauseTime=0;
    }
    iniPauseTime=millis();
    timerTrip=millis()-totalPauseTime;
  }
  text("Trip time: "+nf(int(timerTrip/60000), 2)+":"+nf(int((timerTrip/1000)%60), 2), width-200, 390);

  imageMode(CENTER);
  image(googlephone, width-365, 280);
  image(seetings, width-365, 360);

  if (!mapOption) {
    image(apple, width-90, 340);
    image(bluetooth, width-90, 260);
    image(radio, width-190, 340);
    image(music, width-290, 340);
    image(phone, width-290, 260);
  } else {
    image(maplcd, width-185, 300, 300, 150);
    
    if(mikm) {
      image(limit, width-310, 303);
    } else {
      image(limitkm, width-310, 303);
    }
    //image(limit, width-310, 310);
    image(nav, width-125, 330-progress);
    progress+=velocity/10000;
    textSize(8);
    fill(0);
    text("Speed Limit", width-305, 325);
    fill(255);
    
    if(mikm) {
      speedlimit = 70;
    } else {
      speedlimit = 112;
    }
    
    if (velocity>speedlimit) {
      noStroke();
      rectMode(CENTER);
      rect(width-200, 300, 150, 50, 10);

      textAlign(LEFT, CENTER);
      textSize(14);
      fill(#D3B346);
      text("SLOW DOWN!", width-270, 290);
      fill(0);
      text("Over Speed Limit", width-270, 310);
    }
  }


  image(volknob, width-360, 460);
  text("Volume", width-360, 500);
  image(volknob, width-40, 460);
  text("FM/RADIO", width-40, 500);
  image(search, width-200, 205);
  text("Emergency Signal", width-200, 500);
}
