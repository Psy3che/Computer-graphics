int PIXEL_SIZE = 30;
int cols, rows;

void setup() {
  size(800, 800);
  cols = width / PIXEL_SIZE;
  rows = height / PIXEL_SIZE;
}

void draw() {
  background(30);
  drawGrid();
    drawPixel(0,0,color(0,0,225));
    drawPixel(2,4,color(0,0,225));
    //myLine(-2,-2,8,6);
    bresenhamline(-2,-2,6,6);
        //bresenhamline(6,6,-2,-2);


}
void midpointCircle(int r){
  int x=0;
  int y=r;
  drawPixel(x,y,color(255,0,0));
  int p=1-r;
  while(x<=y)
{if(p<0){
  p+=2*x+1;
}else{y--;
  
}
}


// ──────────────────────────────────────────────
//  HELPER FUNCTIONS
// ──────────────────────────────────────────────
// ──────────────────────────────────────────────── // 辅助函数 // ──────────────────────────────────────────────

int gridToScreenX(int gx) {
  return width / 2 + gx * PIXEL_SIZE;
}

int gridToScreenY(int gy) {
  return height / 2 - (gy + 1) * PIXEL_SIZE;
}

void drawPixel(int gx, int gy, color c) {
  fill(c);
  noStroke();
  rect(gridToScreenX(gx), gridToScreenY(gy), PIXEL_SIZE, PIXEL_SIZE);


}

void drawGrid() {
  stroke(60);
  strokeWeight(1);

  int cx = width / 2;
  int cy = height / 2;

  for (int x = 0; x * PIXEL_SIZE <= width; x++) {
    line(cx + x * PIXEL_SIZE, 0, cx + x * PIXEL_SIZE, height);
    line(cx - x * PIXEL_SIZE, 0, cx - x * PIXEL_SIZE, height);
  }

  for (int y = 0; y * PIXEL_SIZE <= height; y++) {
    line(0, cy + y * PIXEL_SIZE, width, cy + y * PIXEL_SIZE);
    line(0, cy - y * PIXEL_SIZE, width, cy - y * PIXEL_SIZE);
  }

  stroke(100);
  strokeWeight(2);
  line(cx, 0, cx, height);
  line(0, cy, width, cy);
}
