//week10_6_cat_many_angle_ID_saveStrings_loadStrings
PImage cat,head,body,uparm,hand1,hand2;
float [] angle = new float[20]; // 準備20個關節的變數
int ID = 0; // 現在要處理的關節 ID (第幾個關節)
void mouseDragged(){
  angle[ID] += mouseX - pmouseX; 
}
void keyPressed(){
   if(key=='1') ID = 1; // 左邊手臂
   if(key=='2') ID = 2; // 左邊手
   if(key=='3') ID = 3; // 右邊手
   if(key=='4') ID = 4; // (待用)
   if(key=='5') ID = 5; // (待用)
   if(key=='6') ID = 6; // (待用)
   if(key=='0') ID = 0; // 頭
   if(key=='s'){ // 從這裡開始
     String now = ""; // 要放現在全部關節的值
     for(int i=0;i<20;i++){ // 利用for迴圈
       now+= angle[i] + " ";  // 全部塞到now裡，記得有空
     }
     lines.add(now); // 把現在這行，加到 lines 裡
     String [] arr = new String[lines.size()];
     lines.toArray(arr);
     saveStrings("angles.txt",arr);
   }
   if(key=='r'){ // replay
     if(R<lines.size()){
       float [] now = float(split( lines.get(R), ' '));
       for(int i=0;i<20;i++) angle[i] = now[i];
       R = (R+1) % lines.size();
     }
   }
}
int R = 0;
ArrayList<String> lines = new ArrayList<String>(); // 放移動 
void setup(){
  size(560,560);
  cat = loadImage("cat.png");
  head = loadImage("head.png");
  body = loadImage("body.png");
  uparm = loadImage("uparm.png");
  hand1 = loadImage("hand1.png");
  hand2 = loadImage("hand2.png");

}
void draw(){
  background(#FFFFF2);
  image(cat,0,0);
  fill(255,0,255,128);
  rect(0,0,560,560);
  pushMatrix();
    translate(202,285);
    rotate(radians(angle[1]));
    translate(-202,-285);
    image(uparm,0,0);
    pushMatrix();
      translate(136,307);
      rotate(radians(angle[2]));
      translate(-136,-307);
      image(hand1,0,0);
    popMatrix();
  popMatrix();
  pushMatrix();
    translate(357,217);
    rotate(radians(angle[3]));
    translate(-357,-217);
    image(hand2,0,0);
  popMatrix();
  pushMatrix();
    translate(250,236);
    rotate(radians(angle[0]));
    translate(-250,-236);
    image(head,0,0);
  popMatrix();
  image(body,0,0);
}
