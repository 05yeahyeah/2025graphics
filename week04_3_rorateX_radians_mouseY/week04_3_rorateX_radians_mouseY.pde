// week04-3_rorateX_radians_mouseY
void setup(){
  size(400,400,P3D);
}
void draw(){
  background(128);
  translate(width/2,height/2);
  //rotateY(radians(mouseX)); // 左右轉
  rotateX(radians(-mouseY)); // 上下轉
  box(200);
}
