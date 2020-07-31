// tribute to the video synthesizer
// video scope
// by critter and guitari

float knobMode = 0.0;
float knobGain = 0.0;

float currentMode = 0;

String[] modes = {"Line", "Color Shifter", "Trapezoid", "Randomizer"};

void setup() {
  size(500, 500);
}

void draw() {
  if (currentMode == 0) {
    background(0);
    
    stroke(255);
    strokeWeight(10);
    line(width/2, 0, width/2, height);
  }
  else if (currentMode == 1) {
  }
  else if (currentMode == 2) {
  }
  else if (currentMode == 3) {
  }
}
