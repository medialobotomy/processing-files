  float t, col;
void setup() {
  colorMode(HSB);
  size(900, 900);
  background(0);
  stroke(1000);
  strokeWeight(0.2);
}
void draw() {
  translate(width/2, height/2);
  stroke(col, 255, 255, 255);
  line(x(t), y(t), x1(t), y1(t));
  line(x(t+5), y(t), x1(t), y1(t));
    line(x(t+50), y(t), x1(t), y1(t+4));
     line(x(t-400), y(t-400), x1(t+60), y1(t+110));
  t +=0.5;
  col += 5;
  if (col > 255)col = 0;
  if (t > 1600) {
    background(0);
    t=0;
  }
}
float x(float t) {
  return sin(t/30)*500;
}
float y(float t) {
  return cos(t/30)*500;
}
float x1(float t) {
  return sin(t/30)*100;
}
float y1(float t) {
  return cos(t/70)*120;
}
