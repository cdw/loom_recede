// Frame size and speed
int frameWidth = 800;
int frameHeight = 600;
int setframerate = 120;

PShape s;
int i = 1;

// Setup: runs once
void setup() {
  frameRate(setframerate);
  size(frameWidth, frameHeight);
  s = loadShape("spiral.svg");
}

// Draw: run to generate each frame
void draw() {
  background(255);
  pushMatrix();
  // Go to the point around which the shape must rotate
  translate(0.5*frameWidth, 0.5*frameHeight);
  // Rotate the coordinate system
  rotate(-i*3.14159/180);
  pushMatrix();
  // Translate a bit to center the shape on a given point
  translate(-0.5*frameWidth, -0.5*frameHeight);
  // Draw the shape
  shape(s, 0, 0, frameWidth, frameHeight);
  popMatrix();
  popMatrix();
  i += 5;
}


void showRotationCenter()
{
  noStroke();
  fill(#FF8800);
  ellipse(0, 0, 10, 10);
}
