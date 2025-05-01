// week11_3_cat_again
// 重新做一次，讓程式架構變更清楚
PImage cat,head,body,uparm,hand1,hand2,foot1,foot2;
void setup(){
   size(560,560);
   cat = loadImage("cat.png");
   head = loadImage("head.png");
   body= loadImage("body.png");
   uparm= loadImage("uparm.png");
   hand1 = loadImage("hand1.png");
   hand2 = loadImage("hand2.png");
   foot1 = loadImage("foot1.png");
   foot2 = loadImage("foot2.png");
}
void draw(){
  background(#FFFFF2);
  image(body,0,0);
  pushMatrix();
    translate(352,366);
    rotate(radians(frameCount));
    translate(-352,-366);
    image(foot1,0,0);
  popMatrix();
  pushMatrix();
    translate(436,256);
    rotate(radians(frameCount));
    translate(-436,-256);
    image(foot2,0,0);
  popMatrix();
}
