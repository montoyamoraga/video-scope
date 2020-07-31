// tribute to the video synthesizer
// video scope
// by critter and guitari

import processing.sound.*;

float knobMode = 0.0;
float knobGain = 0.5;

float currentMode = 0;

String[] modes = {"Line", "Color Shifter", "Trapezoid", "Randomizer"};

AudioIn audioIn;

Waveform waveform;

int samples = 200;

void setup() {
  
  size(500, 500);
  
  Sound.list();
  
  audioIn = new AudioIn(this, 1);
  
  audioIn.start();
  
  waveform = new Waveform(this, samples);
  
  waveform.input(audioIn);
  
}

void draw() {
  
  if (currentMode == 0) {
    
    background(0);
    
    waveform.analyze();
    
    stroke(0, 255, 0);
    strokeWeight(10);
    
    beginShape();
    for (int i = 0; i < samples; i++) {
      vertex(
      map(waveform.data[i], -1, 1, 0, width),
      map(i, 0, samples, 0, height)
      );
    }
    endShape();
    
  }
  else if (currentMode == 1) {
  }
  else if (currentMode == 2) {
  }
  else if (currentMode == 3) {
  }
}
