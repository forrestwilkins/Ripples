// ripples where you press, expanding until height, then fade
// speed to very in travel

class Ripple {
  float x, y, r, growth;
  boolean fatR = false,
    fatG = false,
    fatB = false;
  float red, green, blue,
    redCR, greenCR, blueCR;
  color ripColor;
  
  Ripple (float mx, float my) {
    colorPalette();
    growth = 1;
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
    r += growth;
  }
  
  void death() {
    if (r > height*1.5) {
      pond.ripples.remove(this);
    }
  }
  
  void colorPalette() {
    redCR = random(1, 2);
    greenCR = random(1, 2);
    blueCR = random(1, 2);
    red = random(0, 250);
    green = random(0, 250);
    blue = random(0, 250);
    ripColor = color(red, green, blue);
  }
  
  void colorMorph() {
    float colorCR;
    float min = 100;
    float max = 230;
    // Red
    colorCR = random(redCR);
    if (red < min) {
      fatR = false;
    } else if (red > max) {
        fatR = true;
    } if (fatR) {
        red -= colorCR;
    } else red += colorCR;
    // Green
    colorCR = random(greenCR);
    if (green < min) {
      fatG = false;
    } else if (green > max) {
        fatG = true;
    } if (fatG) {
        green -= colorCR;
    } else green += colorCR;
    // Blue
    colorCR = random(blueCR);
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
