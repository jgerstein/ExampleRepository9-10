//declare variables
float x, y, dX, dY, diam;

void setup() {
  size(800, 600);

  //set colorMode to HSB
  colorMode(HSB, 360, 100, 100, 100);

  //initialize variables
  x=width/2;
  y=height/2;
  dX=random(-5, 5);
  dY=random(-5, 5);
  diam = 30;
}

void draw() {
  background(0);

  //rainbow ball
  fill(frameCount%360, 100, 100);

  //draw ball
  ellipse(x, y, diam, diam);

  //move ball
  x+=dX;
  y+=dY;

  //bounce off walls
  if (x > width || x < 0) {
    dX *= -1;
  }
  if (y > height || y < 0) {
    dY *= -1;
  }
}