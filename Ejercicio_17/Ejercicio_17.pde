float a, b, c;

void setup(){
  size(400,200);
  background(255);
  float a=1;
  float b=0;
  float c=1;
  float discriminante= pow(b,2) - 4*a*c;
  if (discriminante > 0){
    float R1= (-b+sqrt(discriminante))/(2*a);
    float R2= (-b-sqrt(discriminante))/(2*a);
    println("Las raíces son: " + R1 + " y " + R2);
  }else if (discriminante == 0){
    float R= -b / (2*a);
    println("La raíz doble es: " + R);
  }else {
    println("No hay raíces reales");
  }
}
