import 'dart:io';

void main() {
  const int numeroSecreto = 37;
  
  int numeroIngresado;
  int intentos = 0;

  print("===== JUEGO DE ADIVINANZA =====");
  print("Intenta adivinar el número secreto entre 1 y 100.\n");

  do {
    stdout.write("Ingresa un número: ");
    String? entrada = stdin.readLineSync();

    // Conversión de la entrada a entero
    if (entrada != null && entrada.isNotEmpty) {
      numeroIngresado = int.parse(entrada);
    } else {
      numeroIngresado = 0;
    }

    intentos++;

    if (numeroIngresado < numeroSecreto) {
      print("El número secreto es mayor.\n");
    } else if (numeroIngresado > numeroSecreto) {
      print("El número secreto es menor.\n");
    } else {
      print("¡Correcto!\n");
    }

  } while (numeroIngresado != numeroSecreto); 
  print("=================================");
  print("¡Felicidades! Adivinaste el número.");
  print("Cantidad de intentos utilizados: $intentos");
  print("=================================");
}