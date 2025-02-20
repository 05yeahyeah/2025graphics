// week01-6_PImage_loadImage_background
// 先用小畫家,做出 400x400 的 dog.png
// 再從檔案總管裡, 把圖檔拉到程式裡
PImage img = loadImage("dog.png");
size(400,400); // size() 要與 圖片大小 相同
background(img); // 才能在背景顯示
