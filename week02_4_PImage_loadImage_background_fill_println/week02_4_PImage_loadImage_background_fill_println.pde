// week02-4_PImage_loadImage_background_fill_println
// 新的開始，要描圖
PImage img;
void setup(){
   size(400,400);
   img = loadImage("dog.png");
} // 記得把圖檔，像上周一樣拉到程式碼裡
void draw(){
   background(img);
   fill(255,mouseX); // 半透明色彩 白色， alpha值是128
   println(mouseX); // 把 mouseX 的值，在下面"小黑"印出來
   rect(0,0,400,400); // 畫超大的四邊形，全部蓋住
}
