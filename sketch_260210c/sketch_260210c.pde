float ax=0,ay=0,bx=0,by=400,cx=400,cy=400,dx=400,dy=0;
void drawSquare(){
  line(ax,ay,bx,by);
  line(bx,by,cx,cy);
  line(cx,cy,dx,dy);
  line(dx,dy,ax,ay);
}
void regenerateSquare(){
  float oldax=ax,olday=ay;
  ax=ax+(bx-ax)/8;
  ay=ay+(by-ay)/8;
  bx=bx+(cx-bx)/8;
  by=by+(cy-by)/8;
  cx=cx+(dx-cx)/8;
  cy=cy+(dy-cy)/8;
  dx=dx+(oldax-dx)/8;
  dy=dy+(olday-dy)/8;
}

void setup()
{
  size(400,400);
}
void draw(){
  //noLoop(); 
  drawSquare();
  regenerateSquare();
  drawSquare();
}
