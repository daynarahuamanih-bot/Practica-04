import 'dart:io';

class Curso {
  String nombreCurso;
  String docente;
  List<double> notas = [];

  Curso(this.nombreCurso, this.docente);

  double calcularPromedio() {
    double suma = 0;
    for (var n in notas) {
      suma += n;
    }
    return suma / notas.length;
  }

  double calcularNotaMaxima() {
    double mayor = notas[0];
    for (var n in notas) {
      if (n > mayor) mayor = n;
    }
    return mayor;
  }

  String obtenerEstado() {
    double prom = calcularPromedio();
    if (prom <= 12.99) return 'DESAPROBADO';
    if (prom <= 15.99) return 'APROBADO';
    if (prom <= 18.99) return 'APROBADO BUEN RENDIMIENTO';
    return 'APROBADO - EXCELENTE';
  }

  void mostrarReporte() {
    print('\n=== REPORTE FINAL ===');
    print('Curso: $nombreCurso');
    print('Docente: $docente');
    print('Notas: $notas');
    print('Promedio: ${calcularPromedio().toStringAsFixed(2)}');
    print('Nota más alta: ${calcularNotaMaxima()}');
    print('Condición: ${obtenerEstado()}');
  }
}

void main() {
  print('=== EJERCICIO 4 ===');
  stdout.write('Ingrese el curso: ');
  String cursoNom = stdin.readLineSync()!;

  stdout.write('Ingrese el docente: ');
  String docenteNom = stdin.readLineSync()!;

  var curso = Curso(cursoNom, docenteNom);

  for (int i = 1; i <= 5; i++) {
    double nota;
    do {
      stdout.write('Ingrese la nota $i (0-20): ');
      nota = double.parse(stdin.readLineSync()!);
      if (nota < 0 || nota > 20) {
        print('Nota inválida. Debe ser entre 0 y 20.');
      }
    } while (nota < 0 || nota > 20);

    curso.notas.add(nota);
  }

  curso.mostrarReporte();
}