String consola= "Escribe tu nombre: ";
String nombre= "";
String saludo= "";

void setup(){
 size (400,200);
 println (consola);
}  

void draw(){
  background (#F5C679);
  textAlign (CENTER,CENTER);
  text (saludo,width/2,height/2);
  textSize (25);
  fill (#FC0000);
}

void keyPressed(){
  nombre += key;
  println (nombre);
  if (key == '\n'){
    saludo = "Hola " + nombre + "¿Cómo estás?";
    println (saludo);
  }
}
