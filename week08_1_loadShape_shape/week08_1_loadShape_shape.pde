// week08_1_loadShape_shape
size(400,500,P3D);
PShape gundam = loadShape("Gundam.obj");
translate(width/2,height/2); // 放到畫面中心
pushMatrix();
  translate(0,100); // (5) 再往下移一點點，比較好看
  scale(10,-10,10); // (4) 把模型放大 shape(10) 上下要再顛倒過來
  shape(gundam,0,0); // (2) 畫出 3D 模型
popMatrix();
