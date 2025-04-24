// week10_3_cat_head_body_uparm_hand1_push_TRT_pop
PImage cat,head,body,uparm,hand1;
void setup(){
  size(560,560);
  cat = loadImage("cat.png");
  head = loadImage("head.png");
  body = loadImage("body.png");
  uparm = loadImage("uparm.png");
  hand1 = loadImage("hand1.png");
}
void draw(){
  background(#FFFFF2);
  image(cat,0,0);
  fill(255,0,255,128);
  rect(0,0,560,560);
  pushMatrix();
    translate(202,285);
    //rotate(radians(mouseX));
    translate(-202,-285);
    image(uparm,0,0);
    pushMatrix();
      translate(136,307);
      //rotate(radians(mouseX));
      translate(-136,-307);
      image(hand1,0,0);
    popMatrix();
  popMatrix();
  pushMatrix();
    translate(250,236);
    //rotate(radians(mouseX));
    translate(-250,-236);
    image(head,0,0);
  popMatrix();
  image(body,0,0);
}
