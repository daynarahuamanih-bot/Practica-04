import 'dart:io';

class Estudiante {
  String nombre;
  double calificacion1;
  double calificacion2;
  double calificacion3;

  Estudiante(this.nombre, this.calificacion1, this.calificacion2, this.calificacion3);

  double calcularPromedio() {
    return (calificacion1 + calificacion2 + calificacion3) / 3;
  }

  String determinarEstado() {
    double promedio = calcularPromedio();
    if (promedio >= 13) {
      return 'Aprobado';
    } else {
      return 'Desaprobado';
    }
  }

  void mostrarReporte() {
    print('\n--- REPORTE DEL ESTUDIANTE ---');
    print('Nombre: $nombre');
    print('Promedio: ${calcularPromedio().toStringAsFixed(2)}');
    print('Estado final: ${determinarEstado()}');
  }
}

void main() {
  print('=== ENUNCIADO 1 ===');
  
  stdout.write('Ingrese el nombre del estudiante: ');
  String nombre = stdin.readLineSync()!;

  stdout.write('Ingrese la primera calificación: ');
  double c1 = double.parse(stdin.readLineSync()!);

  stdout.write('Ingrese la segunda calificación: ');
  double c2 = double.parse(stdin.readLineSync()!);

  stdout.write('Ingrese la tercera calificación: ');
  double c3 = double.parse(stdin.readLineSync()!);

  Estudiante estudiante = Estudiante(nombre, c1, c2, c3);

  estudiante.mostrarReporte();
}