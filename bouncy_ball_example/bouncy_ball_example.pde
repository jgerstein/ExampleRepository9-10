int count = 200;
int minSize = 5;
int maxSize = 100;

//making arrays
float[] x = new float[count];
float[] y = new float[count];
float[] dX = new float[count];
float[] dY = new float[count];
float[] diam = new float[count];
float[] hue = new float[count];

void setup() {
  size(800, 600);

  //set colorMode to HSB
  colorMode(HSB, 360, 100, 100, 100);

  //fill lists with values
  for (int i = 0; i < count; i++) {
    diam[i] = random(minSize, maxSize);
    x[i]=random(width*.1, width*.9);
    y[i]=random(height*.1, height*.9);
    dX[i]=random(-5, 5);
    dY[i]=random(-5, 5);
    hue[i] = random(360);
  }
}
void draw() {
  background(0);

  for (int i = 0; i < count; i++) {
    //rainbow ball
    fill(hue[i], 100, 100);
    hue[i]++;
    if (hue[i]>360) {
      hue[i] = 0;
    }


    //draw ball
    ellipse(x[i], y[i], diam[i], diam[i]);

    //move ball
    x[i]+=dX[i];

    y[i]+=dY[i];


    //bounce off walls
    if (x[i] > width || x[i] < 0) {
      dX[i] *= -1;
    }
    if (y[i] > height || y[i] < 0) {
      dY[i] *= -1;
      //dY[i] = dY[i] * -1;
    }
    diam[i]++;
    if (diam[i] > maxSize) {
      diam[i] = minSize;
    }
  }
}