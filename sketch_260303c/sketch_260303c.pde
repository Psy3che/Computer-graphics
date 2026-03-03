float ax=1,ay=2,m=1.0/6.0;
void  setup(){
  size(400,400);
}

void draw(){
  noLoop();
  float y=ay;
  for(float i=ax;i<116;i++){
    beginShape(POINTS);
     vertex(i,round(y));
    endShape();
    y+=m;
}
}
