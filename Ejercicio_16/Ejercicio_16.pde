// Definir variables para las posiciones de Link y el tesoro
float linkX;
float linkY;
float tesoroX = 300;
float tesoroY = 150;

// Definir el radio de Link y el tamaño del tesoro
float radioLink = 20;
float tamañoTesoro = 30;

void setup() {
    size(400, 200);
    // Inicializar la posición de Link en el centro de la pantalla
    linkX = width / 2;
    linkY = height / 2;
}

void draw() {
    background(255);
    // Actualizar la posición de Link con la posición del mouse
    linkX = mouseX;
    linkY = mouseY;
    // Dibujar a Link como un círculo
    fill(0, 0, 255); // Color azul para Link
    ellipse(linkX, linkY, radioLink * 2, radioLink * 2);
    // Dibujar el tesoro como un cuadrado
    fill(255, 215, 0); // Color dorado para el tesoro
    rect(tesoroX, tesoroY, tamañoTesoro, tamañoTesoro);

    // Calcular la distancia entre Link y el tesoro usando el teorema de Pitágoras
    float distancia = calcularDistancia(linkX, linkY, tesoroX, tesoroY);
    // Mostrar la distancia entre Link y el tesoro en la pantalla
    fill(0); // Color negro para el texto
    text("Distancia: " + distancia, 10, 20);
    
    // Verificar si Link está a una distancia cercana al tesoro (ajusta el valor umbral según sea necesario)
    float umbral = 30; // Umbral para considerar que Link está cerca del tesoro
    if (distancia <= umbral) {
        // Si Link está cerca del tesoro, el tesoro desaparece (no se dibuja el cuadrado)
        fill(255); // Color blanco para cuando desaparece el tesoro
        rect(tesoroX, tesoroY, tamañoTesoro, tamañoTesoro);
    }
}

// Función para calcular la distancia entre dos puntos usando el teorema de Pitágoras
float calcularDistancia(float x1, float y1, float x2, float y2) {
    float catetoX = x2 - x1;
    float catetoY = y2 - y1;
    return sqrt(pow(catetoX,2) + pow(catetoY,2));
}
