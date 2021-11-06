PImage cat;
PImage cat2;
int myColor = color(122, 85, 40);
int myRed = color(240, 65, 45);
int myPink = color(222, 53, 156);
Particle[] phil = new Particle[100];
void setup() {
  size(600, 600);
  cat = loadImage("cat.png");
  cat2 = loadImage("cats2.png");
  for (int i =0; i<50; i++)
    phil[i] = new OddBallParticle();
  for (int i =50; i< phil.length; i++)
    phil[i] = new Particle();
}
void draw() {
  background (myColor);
  // if want just moving dots
  image(cat, 150, 150, width/2, height/2);
  for (int i = 0; i< phil.length; i++) {
    phil[i].show();
    phil[i].move();
  }
  fill(255);
  textSize(30);
  text("funny looking cats send out hearts", 45, 550);
}

void mousePressed() {
  setup();
  redraw();
  myColor = color(168, 154, 153);
  cat = loadImage("cat2.png");
  myRed = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  myPink = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  
}

class Particle
{
  double myX, myY, mySpeed, myAngle;
  int myColor;

  Particle() {
    myX= 300.0;
    myY = 300.0;
    mySpeed = Math.random()*20;
    myAngle = Math.random()*2*Math.PI;
  }
  void move() {
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY =  myY + Math.sin(myAngle) * mySpeed;
    if (myX >= 600)
      myX = 0;
  }

  void show() {
    noStroke();
    fill(myRed);
    ellipse((float)myX, (float)myY, 20, 20);
  }
}

class OddBallParticle extends Particle {
  void move() {
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY =  myY + Math.sin(myAngle) * mySpeed;
  }

  void show() {
    noStroke();
    fill(myPink);
    ellipse((float)myX, (float)myY, 15, 15);
  }
}
