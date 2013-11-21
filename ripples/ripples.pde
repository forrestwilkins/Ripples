Water pond;

void setup() {
  size(displayWidth, displayHeight);
  orientation(PORTRAIT);
  ellipseMode(CENTER);
  pond = new Water();
  background(0);
  smooth();
}

void draw() {
  pond.display();
}

void mousePressed() {
  pond.startSwipe();
}

void mouseReleased() {
  pond.swipeDetector();
  pond.ripple(mouseX, mouseY);
}
