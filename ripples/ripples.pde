Water water;

void setup() {
  size(displayWidth, displayHeight);
  orientation(PORTRAIT);
  ellipseMode(CENTER);
  rectMode(CENTER);
  water = new Water();
  background(0);
  smooth();
}

void draw() {
  water.display();
}

void mousePressed() {
  water.startSwipe();
}

void mouseReleased() {
  water.swipeDetector();
  water.ripple(mouseX, mouseY);
}
