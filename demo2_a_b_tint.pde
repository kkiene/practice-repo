PImage doge;
float r, g, b;
color c; // color is a unique data type

void setup() {
  size(650, 397);
  doge = loadImage("doge.jpg");
}

void draw() {


  loadPixels();
  for (int i = 0; i < pixels.length; i++) {
    r = random(0, 255);
    g = random(0, 255);
    //b = random(0, 255);
    c = color(r, g);
    pixels[i] = c;
  }
  updatePixels();

  tint(255, 100);
  
  image(doge, 0, 0);
}