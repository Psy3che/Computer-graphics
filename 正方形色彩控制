//(ay-by)x+(bx-ax)y-((ay-by)ax+(bx-ax)ay)=0

float ax = 100,
      ay = 100,
      bx = 200,
      by = 350,
      cx = 300,
      cy = 250,
      px = 100,
      py = 100;

float decision(float p1x, float p1y, float p2x, float p2y, float x0, float y0){
  return (p1y-p2y)*x0+(p2x-p1x)*y0-((p1y-p2y)*p1x+(p2x-p1x)*p1y);
}

void setup(){
  size(400,400);
  ellipseMode(RADIUS);
}

void draw(){
  background(200);
  if (decision(ax, ay, bx, by, px, py) * decision(ax, ay, bx, by, cx, cy) > 0 &&
      decision(bx, by, cx, cy, px, py) * decision(bx, by, cx, cy, ax, ay) > 0 &&
      decision(cx, cy, ax, ay, px, py) * decision(cx, cy, ax, ay, bx, by) > 0){
    fill(0,255,0);
  }
  else {
    fill(255,0,0);
  }
  circle(px, py ,10);
  stroke(0);
  line(ax, ay, bx, by);
  line(bx, by, cx, cy);
  line(cx, cy, ax, ay);
  px = mouseX;
  py = mouseY;
}
