float x0=300,
      y0=300,
      r=100,
      n=18;
void setup(){
  size(600,600);
}
void draw()
{
   noLoop();
   noFill();
   beginShape(LINES);
    for(float t1=0;t1<2*PI;t1+=2*PI/n){
       for(float t2=0;t2<2*PI&&t1!=t2;t2+=2*PI/n){
      vertex(x0+r*cos(t1),y0+r*sin(t1));
      vertex(x0+r*cos(t2),y0+r*sin(t2));
    }
    }
      vertex(x0+r*cos(PI),y0+r*sin(PI));
   endShape();
   
}
