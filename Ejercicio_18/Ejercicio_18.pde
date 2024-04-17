int linea;
int elipse;
int direc=1;

void setup(){
  size(400,400);
  linea=200;
  elipse=40;
}
void draw(){
  background(0);
  
  for (int i=0; i < 1; i++){
    linea= linea + direc;
  }
  if (linea>= height || linea<= 0){
    direc= direc* -1;
  }
  println(linea);
  
  stroke(255);
  fill(0,255,0);
  line(direc, linea, width, linea);
  ellipse(width/2, (direc==1) ? linea + elipse : linea - elipse, 80, 80);
}
