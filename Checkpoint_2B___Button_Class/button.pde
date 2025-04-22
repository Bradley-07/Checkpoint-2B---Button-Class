class button {

  // instance variables
  int x, y, w, h;
  boolean clicked;
  color highlight, normal;
  String text = "";
  PImage picture = null; // initialize as null by default

  // constructor for text buttons
  button(String t, int _x, int _y, int _w, int _h, color norm, color high) {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    text = t;
    normal = norm;
    highlight = high;
    clicked = false;
  }

  // constructor for image buttons using a PImage
  button(PImage img, int _x, int _y, int _w, int _h, color norm, color high) {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    normal = norm;
    highlight = high;
    clicked = false;
    picture = img; 
  }


  // method to display the button
  void show() {
    rectMode(CENTER);
    boolean hovered = mouseX > x - w / 2 && mouseX < x + w / 2 && mouseY > y - h / 2 && mouseY < y + h / 2;

    fill(hovered ? highlight : normal);
    stroke(0);
    strokeWeight(4);
    rect(x, y, w, h, 30);

    if (picture != null) {
      imageMode(CENTER);
      image(picture, x, y, w * 0.9, h * 0.9); // draw picture if present
    } else {
      textAlign(CENTER, CENTER);
      fill(hovered ? normal : highlight);
      textSize(w / 4);
      text(text, x, y);
    }

    if (mousePressed && hovered) {
      clicked = true;
    } else {
      clicked = false;
    }
  }
}
