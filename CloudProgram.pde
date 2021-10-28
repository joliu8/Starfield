Cloud[] clee = new Cloud[30];

void setup() {
  size(500, 500);
  noStroke();
  for (int i = 0; i < 10; i++)
    clee[i] = new StormCloud();
  for (int i = 10; i< clee.length; i++)
    clee[i] = new Cloud();
}

void draw() {
  background(112, 195, 207);
  for (int i = 0; i< clee.length; i++) {
    clee[i].drift();
    clee[i].show();
  }
}
class Cloud {
  int myColor, myOpacity, myHeight, myWidth, myX, myY, mySpeed;
  Cloud() {
    myColor = 255;
    myOpacity = (int)(Math.random()*100);
    myHeight = (int)(Math.random()*100);
    myWidth = (int)(Math.random()*150);
    myX = (int)(Math.random()*150)+180;
    myY = (int)(Math.random()*50)+50;
    mySpeed = 1;
  }
  void show() {
    noStroke();
    fill(myColor, myOpacity);
    ellipse(myX, myY, myWidth, myHeight);
  }

  void drift() {
    myX = myX + mySpeed;
    if (myX >= 500)
      myX = -150;
  }
}

class StormCloud extends Cloud {
  StormCloud() {
    myColor = 0;//(int)(Math.random()*20)+80;
    myOpacity = (int)(Math.random()*60) + 100;
    myHeight = (int)(Math.random()*40) + 40;
    myWidth = (int)(Math.random()*80) + 160;
    myX = (int)(Math.random()*100)+300;
    myY = (int)(Math.random()*30)+50;
    mySpeed = 1;
  }
}
