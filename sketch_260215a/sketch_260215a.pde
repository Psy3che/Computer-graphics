//size(400,400);
////for(int i=0;i<=400; i=i+100)
////{
////  line(0,400-i,i,0);
////}
////for(int i=0;i<=400; i=i+100)
////{
////  line(i,400,400,400-i);
////}
////step 1:
//line(0,  0,300,0);
//line(0,75 ,225,0);
//line(0,125,125,0);
//line(0,225,75, 0);
//line(0,300,  0,0);
////step 2:
//line(0, 200,200,200);
//line(50,200,200,150);
//line(100,200,200,100);
//line(150,200,200,50);
//line(200,200,200,0);size(400, 400);
background(255);   // 白色背景
stroke(0);         // 黑色线条
strokeWeight(1);   // 线条粗细

// 定义正方形的四个顶点（中心在画布中间，边长300）
int centerX = 200;
int centerY = 200;
int halfSize = 150;

// 把正方形的每条边分成12等份（步长25），份数越多图案越平滑
int divisions = 12;
float step = (halfSize * 2) / divisions;

// 遍历每一个等分点，绘制四组连线
for (int i = 0; i <= divisions; i++) {
  // 计算当前等分点的偏移量
  float offset = i * step;
  
  // 1. 上边左侧 → 右边上侧
  line(centerX - halfSize, centerY - halfSize + offset, 
       centerX - halfSize + offset, centerY - halfSize);
  
  // 2. 右边上侧 → 下边右侧
  line(centerX + halfSize - offset, centerY - halfSize, 
       centerX + halfSize, centerY - halfSize + offset);
  
  // 3. 下边右侧 → 左边下侧
  line(centerX + halfSize, centerY + halfSize - offset, 
       centerX + halfSize - offset, centerY + halfSize);
  
  // 4. 左边下侧 → 上边左侧
  line(centerX - halfSize + offset, centerY + halfSize, 
       centerX - halfSize, centerY + halfSize - offset);
}

// 可选：绘制外框正方形，和图片里的样式一致
strokeWeight(2);
rect(centerX - halfSize, centerY - halfSize, halfSize * 2, halfSize * 2);
