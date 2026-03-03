float ax=100,ay=50,bx=300,by=250,cx=100,cy=400;
float test1(){
  return (ay-by)*cx+(bx-ax)*cy-((ay-by)*ax+(bx-ax)*ay);
}
float test2(float x,float y){
  return (ay-by)*x+(bx-ax)*y-((ay-by)*ax+(bx-ax)*ay);
}
void setup(){
  size(600,600);
  ellipseMode(RADIUS);
}

//void draw(){
//  noLoop();
//  stroke(255,0,0);
//  background(0,24,0);
//  fill(random(225));
//  noStroke();
//  //noFill();
//  circle(300,300,300);
//}
//void draw(){
//  noLoop();
//  for(int i=50;i<=550;i+=100)
//  {
//      for(int j=50;j<=550;j+=100)  
//      circle(i,j,50);
//  }
//}
void draw(){
  background(244);
  //line(ax,ay,mouseX,mouseY);
  cx=mouseX;
  cy=mouseY;
  stroke(0);
  line(ax,ay,bx,by);
  fill(255);
  if(test1()<0)
  {
    fill(0,255,0);
  }
  else if(test1()>0)
  {
    fill(0,0,255);
  }  else
  {
    fill(255,0,0);
  }
  circle(cx,cy,20);
}
void keyPressed()
{
  if(key=='x'){
   cx=cx+1;
  }
  else if(key=='y'){
    cy=cy+1;
  }
}
