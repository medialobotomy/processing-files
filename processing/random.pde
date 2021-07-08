float circleX = 450;
float circleY = 450;
float circleR = 400;

void setup() {
  size(900, 900);
  ellipseMode(RADIUS);
}

void draw() {
  background(225);
  ellipse(circleX, circleY, circleR, circleR); 

  stroke(0);
  for (int i = 0; i < 100; i++) {
    float x1 = circleX + cos(random(2*PI)) * random(circleR);
    float y1 = circleY + sin(random(5*PI)) * random(circleR);
    float x2 = circleX + cos(random(26*PI)) * random(circleR);
    float y2 = circleY + sin(random(2*PI)) * random(circleR);

    line(x1, y1, x2, y2);
  }
}
