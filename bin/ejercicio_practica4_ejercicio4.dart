import 'dart:io';

class Curso {
  String nombreCurso;
  String docente;
  List<double> calificaciones = []; 

  Curso(this.nombreCurso, this.docente);

  void agregarCalificacion(double nota) {
    calificaciones.add(nota);
  }

  double calcularPromedio() {
    double suma = 0;
    for (var nota in calificaciones) {
      suma += nota;
    }
    return suma / calificaciones.length;
  }

  double obtenerNotaMasAlta() {
    double max = calificaciones[0];
    for (var nota in calificaciones) {
      if (nota > max) {
        max = nota;
      }
    }
    return max;
  }

  String determinarEstadoFinal() {
    double promedio = calcularPromedio();
    if (promedio <= 12.99) {
      return 'DESAPROBADO';
    } else if (promedio <= 15.99) {
      return 'APROBADO';
    } else if (promedio <= 18.99) {
      return 'APROBADO BUEN RENDIMIENTO';
    } else {
      return 'APROBADO - EXCELENTE';
    }
  }

  void mostrarResultados() {
    print('\n===== RESULTADOS DEL CURSO =====');
    print('Curso: $nombreCurso');
    print('Docente: $docente');
    print('Notas ingresadas: $calificaciones');
    print('Promedio: ${calcularPromedio().toStringAsFixed(1)}');
    print('Nota más alta: ${obtenerNotaMasAlta().toStringAsFixed(1)}');
    print('Estado: ${determinarEstadoFinal()}');
  }
}

void main() {
  print('===== SISTEMA DE CALIFICACIONES =====');

  stdout.write('Ingrese el nombre del curso: ');
  String nombreCurso = stdin.readLineSync()!;

  stdout.write('Ingrese el nombre del docente: ');
  String docente = stdin.readLineSync()!;

  Curso curso = Curso(nombreCurso, docente);

  for (int i = 1; i <= 5; i++) {
    double nota;
    do {
      stdout.write('Ingrese la calificación $i (0 - 20): ');
      nota = double.parse(stdin.readLineSync()!);

      if (nota < 0 || nota > 20) {
        print('Error: La nota debe estar entre 0 y 20.');
      }
    } while (nota < 0 || nota > 20);

    curso.agregarCalificacion(nota);
  }

  curso.mostrarResultados();
}