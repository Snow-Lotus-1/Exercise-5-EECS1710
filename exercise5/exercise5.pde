import processing.sound.*;

//The heck this doesn't work?
float maxThreshold = 0.01;
float minThreshold = 0.001;

void setup() {
  frameRate(60);
  size(800, 600, P2D);  
  setupSound();
}

void draw() {
  updateSound();
  
  float amp = getAmp();
 
  ellipseMode(CENTER);
  noStroke();
  
  // using two thresholds instead of one makes for smoother transitions
  if (amp > maxThreshold) {
    background(0,255,0);
    fill(255,0,0);
  } else if (amp < minThreshold) {
    background(255,0,0);
    fill(0,255,0);
  }
  print(amp);
  ellipse(width/2,height-50-amp,50,50);
}
