float xstart, xnoise, ystart, ynoise;
void setup() {
size(1920,1080);
smooth(); 
background(0);
frameRate(25);
xstart = random(200);
ystart = random(10);
}
void draw () {
background(0);
xstart += 0.05;
ystart += 0.04;
xnoise = xstart;
ynoise = ystart;
for (int y = 0; y <= height; y+=5) {
ynoise += 0.05;
xnoise = xstart;
for (int x = 0; x <= width; x+=50) {
xnoise += 10;
drawPoint(x, y, noise(xnoise, ynoise));
}
}
}
void drawPoint(float x, float y, float noiseFactor) {
pushMatrix();
translate(x,y);
rotate(noiseFactor * radians(740));
noStroke();
float edgeSize = noiseFactor * 35;
float grey = 170 + (noiseFactor * 120);
float alph = 190 + (noiseFactor * 120);
fill(grey, alph);
ellipse(1,1, edgeSize, edgeSize/20);
popMatrix();
}
