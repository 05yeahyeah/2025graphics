// week08_2_PShape_gundam_setup_draw_push_scale_shape_pop
// 轉動它，要改成互動模式的程式風格
PShape gundam;
void setup(){
  size(400,500,P3D); 
  gundam = loadShape("Gundam.obj");
}
void draw(){
  background(100); 
  translate(width/2,height/2+100);
   pushMatrix();
     translate(-100,0,0);
     rotateY(radians(frameCount));
     scale(10,-10,10);
     shape(gundam,0,0);
   popMatrix();
   pushMatrix();
     translate(120,0,0);
     rotateY(radians(frameCount));
     scale(10,-10,10);
     shape(gundam,0,0);
   popMatrix();
}
