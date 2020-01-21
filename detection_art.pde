PImage bumi;
float[] baru;
int count;

void setup() {
  size(800, 450);
  count = 0;
  bumi = loadImage("bumi-01.png");
  baru = new float[width+height*width];
  frameRate(10);
  image(bumi, 0, 0, 800, 450);
  loadPixels();
  for (int i = 0; i < width; i+=1) {
    for (int j = 0; j < height; j+=1) {
      int loc = i+j*width;
      baru[loc] = red(pixels[loc]);
    }
  }
  updatePixels();
  background(255);
}

void draw() {
  //background(255);
  //fill(255, 5);
  //rect(-1, -1, 800*2+1, 450*2+1);
  for (int i = 0; i < width; i+=5) {
    for (int j = 0; j < height; j+=10) {
      int loc = i+j*width;
      if (baru[loc] > 50 && baru[loc] < 100) {
        rectMode(CENTER);
        noStroke();
        if (random(1) < 0.005) {
          //fill(0, 100, 255);
          fill(random(180, 200), random( 180, 240), random(190, 220));
          float sisi = 4;
          rect(i, j, sisi, sisi);
        } else if(random(1) < 0.000005){
          fill(random(200, 230), random( 0, 30), random(100, 150));
          float sisi = 4;
          rect(i, j, sisi, sisi);
          //fill(255);
        }
      }
    }
  }



  //noLoop();
}