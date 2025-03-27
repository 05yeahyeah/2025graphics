// week06_5_push_T_box_push_T_R_T_box_pop_pop
// 慢慢組合出機器手臂
void setup(){
 size(500,400,P3D); 
}
void draw(){
  background(255);
  translate(width/2,height/2);
  sphere(10); 
  
  fill(252,131,77);
  pushMatrix(); // Step04 新的一組
    translate(x,y); // Step05 新的轉動
    box(200,50,25); // Step05 手肘
    pushMatrix(); // Step03 把程式往右縮排 
    translate(100,0); // Step01 發現放100,0
    //if(mousePressed) rotateZ(radians(frameCount));
    rotateZ(radians(frameCount)); // Step02 只轉動
    translate(25,0,0); // 往右推，讓左端放中心
    box(50,25,50); // 小手腕
    popMatrix(); // Step03 把程式往右縮排
  popMatrix(); // Step04 新的一組
}
float x=0,y=0; // 會動的位置
void mouseDragged(){
 x += mouseX - pmouseX;
 y += mouseY - pmouseY;
 println("x:" + x + " y:" + y); 
}
