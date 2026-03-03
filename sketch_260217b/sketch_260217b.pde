void setup(){
  size(600,600);

}
void draw()
{
  beginShape();
  for(float x=-2;x<2;x+=0.1){
    vertex(x*50+300,-x*x*50+300);
  }
  vertex(2*50+300,-2*2*50+300);
  endShape();
}
