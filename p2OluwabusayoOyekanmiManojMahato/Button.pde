class Button {
  PVector pos;
  PImage img;
  String id;
  boolean pressed = false;
  int width;
  int height;

  Button(float x, float y, PImage im, String i) {
    pos = new PVector(x, y);
    img = im;
    id = i;
    width=img.width;
    height=img.height;
  }

  Button(float x, float y, String i, int w, int h) {
    pos = new PVector(x, y);
    img = null;
    id = i;
    width=w;
    height=h;
  }

  void draw() {
    if (img!=null) {
      imageMode(CENTER);
      image(img, pos.x, pos.y);
    } else {
      fill(255);
      textSize(32);
      textAlign(CENTER, CENTER);
      text(id, pos.x, pos.y);
    }
  }

  boolean CheckMouse() {
    if (mouseX>pos.x-width/2 && mouseX<pos.x+width/2) {
      if (mouseY>pos.y-height/2 && mouseY<pos.y+height/2) {
        pressed = true;
        return true;
      }
    }
    pressed = false;
    return false;
  }
}
