// week10_1_cat_head_body
// 頭，身體，手臂
size(560,560);
PImage cat = loadImage("cat.png");
PImage head = loadImage("head.png");
PImage body = loadImage("body.png");
background(#FFFFF2);
image(cat,0,0);
fill(255,0,255,128);
rect(0,0,560,560);
image(head,0,0);
image(body,0,0);
