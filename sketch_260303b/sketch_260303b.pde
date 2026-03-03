float ax = 100,
      ay = 100,
      bx = 200,
      by = 350,
      cx = 300,
      cy = 250,
      px = 100,
      py = 100,
      bA,bB,bC;

void setBarycentricCoord(){
    float D = (by-cy)*(ax-cx)+(cx-bx)*(ay-cy);
    bA = ((by-cy)*(px-cx)+(cx-bx)*(py-cy))/D;
    bB = ((cy-ay)*(px-cx)+(ax-cx)*(py-cy))/D;
    bC = 1 - bA - bB;
}

void setup(){
  size(400,400);
}

void draw(){
  background(200);

  for(int i = 0; i < width; i++){
     for(int j = 0; j < height; j++){
       px = i;
       py = j;
       setBarycentricCoord();
       if (bA > 0 && bB > 0 && bC > 0){
         //if(true){
         stroke(bA * 255, bB * 255, bC * 255);
         beginShape(POINTS);
         vertex(px, py);
         endShape();
       }
     }
  }
  stroke(0);
  line(ax, ay, bx, by);
  line(bx, by, cx, cy);
  line(cx, cy, ax, ay);
}
