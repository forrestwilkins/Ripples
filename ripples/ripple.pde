// ripples where you press, expanding until height, then fade
// speed to very in travel

class Ripple {
  float x, y, r, growth;
  boolean fatR = false,
    fatG = false,
    fatB = false;
  float red, green, blue;
  color ripColor;
  
  Ripple (float mx, float my) {
    colorPalette();
    x = mx;
    y = my;
  }
  
  void update() {
    noFill();
    stroke(ripColor);
    ellipse(x, y, r, r);
    colorMorph();
    travel();
    death();
  }

  void travel() {
    r++;
  }
  
  void death() {
    if (r > height) {
      pond.ripples.remove(this);
    }
  }
  
  void colorPalette() {
    red = random(0, 256);
    green = random(0, 256);
    blue = random(0, 256);
    ripColor = color(red, green, blue);
  }
  
  void colorMorph() {
    float colorCR;
    float min = 100;
    float max = 230;
    // Red
    colorCR = random(1.5);
    if (red < min) {
      fatR = false;
    } else if (red > max) {
        fatR = true;
    } if (fatR) {
        red -= colorCR;
    } else red += colorCR;
    // Green
    colorCR = random(1.5);
    if (green < min) {
      fatG = false;
    } else if (green > max) {
        fatG = true;
    } if (fatG) {
        green -= colorCR;
    } else green += colorCR;
    // Blue
    colorCR = random(1.5);
    if (blue < min) {
      fatB = false;
    } else if (blue > max) {
        fatB = true;
    } if (fatB) {
        blue -= colorCR;
    } else blue += colorCR;
    ripColor = color(red, green, blue);
  }
}
