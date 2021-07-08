class Particle {
  PVector vel,pos;
  color c = color(#FFFFFF);
  float alpha;
  
  
  Particle (float x,float y ){
  
  this.vel = new PVector(0, 0);
  this.pos = new PVector(x, y);
  }

 void render (float rad){
  ellipse(this.pos.x, this.pos.y, rad, rad);
 }
 
final float noiseScale = 400; 
 void update(){
  float direction = noise((this.pos.x)/noiseScale, this.pos.y/noiseScale)*TWO_PI;
      
  this.vel.x= sin(direction)*2;
  this.vel.y = cos(direction)*5;
  this.pos.add(this.vel);
    
  }
 
 }
 int num = 2000;
 Particle particles[]= new Particle[num];
 
 void setup(){
  size(1500, 1000);
  background(000);
 
 
  for(int i = 10; i < num; i++){
    particles[i] = new Particle(i,height);
    particles[i].alpha = map(abs(i-num/2),10,num/2,250,20);
  }

  
}

void draw(){
  noStroke();
  smooth();
  
for(int i = 15; i < num; i++){
    
    fill(particles[i].c,particles[i].alpha);
    particles[i].update();
    particles[i].render(2);


    }




 
    // Saves a TIFF file named "diagonal.tif"
save("diagonal.tif");
   }
