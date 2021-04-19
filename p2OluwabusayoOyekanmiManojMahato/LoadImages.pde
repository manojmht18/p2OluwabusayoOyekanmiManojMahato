PImage back;
PImage signalL, signalLD;
PImage signalR, signalRD;
PImage closedoors;

PImage signalButtonL;
PImage signalButtonR;
PImage accelerator, brake;

PImage cruiseButton, cruiseIcon, mikmButton;
PImage fuelIcon, fuelLowIcon;
PImage engine;
PImage seat, door, temperature;
PImage warning;

PImage home, menu, googlephone, googlemap, seetings, apple, bluetooth, radio, map, music, phone, volknob, search;
PImage nav, limit, limitkm, maplcd;
PImage battery, oil, headlight, tire;
PImage hideicons;
PImage tmp;

void LoadImages() {
  back = loadImage("background.jpg");
  back.resize(width, height);

  signalL = loadImage("signal-arrow-left.png");
  signalL.resize(50, 0);
  signalLD = loadImage("signal-arrow-left-disabled.png");
  signalLD.resize(50, 0);
  signalR = loadImage("signal-arrow-right.png");
  signalR.resize(50, 0);
  signalRD = loadImage("signal-arrow-right-disabled.png");
  signalRD.resize(50, 0);

  signalButtonL = loadImage("signal-button-left.png");
  signalButtonL.resize(0, 50);
  signalButtonR = loadImage("signal-button-right.png");
  signalButtonR.resize(0, 50);
  accelerator = loadImage("button-accelerator.png");
  accelerator.resize(50, 0);
  brake = loadImage("button-brake.png");
  brake.resize(0, 50);

  cruiseButton = loadImage("button-cruise-control.png");
  cruiseButton.resize(0, 35);
  mikmButton = loadImage("mi-km.png");
  mikmButton.resize(0, 35);
  cruiseIcon = loadImage("icon-cruise-control.png");
  cruiseIcon.resize(0, 20);

  fuelIcon = loadImage("icon-fuel-default.png");
  fuelIcon.resize(0, 12);
  fuelLowIcon = loadImage("icon-fuel-low.png");
  fuelLowIcon.resize(0, 12);

  engine = loadImage("engine-start-stop.png");
  engine.resize(0, 60);

  seat = loadImage("icon-seat-belt-warning.png");
  seat.resize(25, 0);
  door = loadImage("door-open.png");
  door.resize(25, 0);
  temperature = loadImage("temperature-icon.png");
  temperature.resize(25, 0);

  warning = loadImage("icon-warning-signal.png");
  warning.resize(80, 0);

  home = loadImage("1-icon-left-home.png");
  home.resize(20, 0);
  menu = loadImage("2-icon-left-menu-lines.png");
  menu.resize(20, 0);
  googlephone = loadImage("3-icon-left-phone.png");
  googlephone.resize(20, 0);
  googlemap = loadImage("4-icon-map.png");
  googlemap.resize(20, 0);
  seetings = loadImage("5-icno-left-settings.png");
  seetings.resize(20, 0);
  apple = loadImage("button-apple-carplay.png");
  apple.resize(0, 60);
  bluetooth = loadImage("button-blutooth.png");
  bluetooth.resize(0, 60);
  radio = loadImage("button-fm-radio.png");
  radio.resize(0, 60);
  map = loadImage("button-map.png");
  map.resize(0, 60);
  music = loadImage("button-music.png");
  music.resize(0, 60);
  phone = loadImage("button-phone.png");
  phone.resize(0, 60);
  volknob = loadImage("icon-volumn-knob.png");
  volknob.resize(0, 60);
  search = loadImage("search.png");
  search.resize(0, 20);

  nav = loadImage("map-navigation-icon.png");
  nav.resize(15, 0);
  
  limit = loadImage("map-speed-limit.png");
  limit.resize(0, 40);
  limitkm = loadImage("map-speed-limit-km.png");
  limitkm.resize(0, 40);
   
  maplcd = loadImage("map-lcd-1.png");

  closedoors = loadImage("button-close-doors.png");
  closedoors.resize(0, 50);

  battery = loadImage("icon-battery.png");
  battery.resize(0, 20);
  oil = loadImage("icon-engine-oil-pressure.png");
  oil.resize(0, 20);
  headlight = loadImage("icon-headlight.png");
  headlight.resize(0, 20);
  tire = loadImage("icon-tire-pressure.png");
  tire.resize(0, 20);
  hideicons = loadImage("icon-hide-icons.png");
  hideicons.resize(0, 50);
  tmp = loadImage("icon-temperature-up-down.png");
  tmp.resize(0, 15);

  listButtons = new ArrayList();
  listButtons.add(
    new Button(560, height-50, hideicons, "Hide")
    );
  listButtons.add(
    new Button(100, height-50, signalButtonL, "Left Signal")
    );
  listButtons.add(
    new Button(185, height-50, signalButtonR, "Right Signal")
    );
  listButtons.add(
    new Button(740, height-90, accelerator, "Accelerator")
    );
  listButtons.add(
    new Button(660, height-120, brake, "Brake")
    );
  listButtons.add(
    new Button(160, height-130, cruiseButton, "Cruise")
    );
  listButtons.add(
  new Button(90, height-130, mikmButton, "MiKM")
  );
  listButtons.add(
    new Button(750, height-190, engine, "Engine")
    );
  listButtons.add(
    new Button(width-200, height-240, warning, "Warning")
    );
  listButtons.add(
    new Button(width-365, 310, googlemap, "Map")
    );
  listButtons.add(
    new Button(width-365, 240, home, "Home")
    );
  listButtons.add(
    new Button(width-365, 210, menu, "Home")
    );
  listButtons.add(
    new Button(width-190, 260, map, "Map2")
    );
  listButtons.add(
    new Button(260, height-50, closedoors, "Close")
    );
  listButtons.add(
    new Button(340, height-50, "P", 40, 40)
    );
  listButtons.add(
    new Button(390, height-50, "R", 40, 40)
    );
  listButtons.add(
    new Button(440, height-50, "N", 40, 40)
    );
  listButtons.add(
    new Button(490, height-50, "D", 40, 40)
    );
}
