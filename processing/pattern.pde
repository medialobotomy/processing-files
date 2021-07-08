// Nervous Waves 2
// Levente Sandor, 2014


void setup() {
  size(1000, 500);
  fill(0);
  noStroke();
  rectMode(CENTER);
  frameRate(30);
  noiseDetail(2, 0.9);
}

void draw() {
  background(255);
  for (int x = 10; x < width; x += 10) {
    for (int y = 10; y < height; y += 10) {
      float n = noise(x * 0.005, y * 0.005, frameCount * 0.05);
      pushMatrix();
      translate(x, y);
      rotate(TWO_PI * n);
      scale(20 * n);
      rect(0, 0, 2, 1);
      popMatrix();
    }
  }
  
}
