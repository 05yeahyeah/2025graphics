// week05_6_pushMatrix_popMatrix_bad
// 因為有很多的移動、旋轉，所以用分階層
void setup(){
   size(400,400); 
}
void draw(){
  background(204);
  
  translate(width/2, height/2); // 移到畫面中心
  rotate(radians(frameCount)*10);
  rect(-50, -5, 100, 10);
  
  translate(width/2-100, height/2); // 移到畫面中心
  rotate(radians(frameCount)*10);
  rect(-50, -5, 100, 10);
}
