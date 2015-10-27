//declare variables
float x, y, dX, dY, diam;
float x1, y1, dX1, dY1, diam1;

void setup() {
  size(800, 600);

  //set colorMode to HSB
  colorMode(HSB, 360, 100, 100, 100);

  //initialize variables
  x=width/2;
  x1=random(width);
  y=height/2;
  y1=random(height);
  dX=random(-5, 5);
  dX1=random(-10, 10);
  dY=random(-5, 5);
  dY1=random(-3, 3);
  diam = 30;
  diam1 = 80;
}

void draw() {
  background(0);

  //rainbow ball
  fill(frameCount%360, 100, 100);

  //draw ball
  ellipse(x, y, diam, diam);

  fill((frameCount+180)%360, 100, 100);
  ellipse(x1, y1, diam1, diam1);

  //move ball
  x+=dX;
  x1+=dX1;
  y+=dY;
  y1+=dY1;

  //bounce off walls
  if (x > width || x < 0) {
    dX *= -1;
  }
  if (y > height || y < 0) {
    dY *= -1;
  }
  if (x1 > width || x1 < 0) {
    dX1 *= -1;
  }
  if (y1 > height || y1 < 0) {
    dY1 *= -1;
  }
  if (dist(x, y, x1, y1) < diam/2 + diam1/2) {
    dX *= -1;
    dY *= -1;
    dX1 *= -1;
    dY1 *= -1;
  }
}