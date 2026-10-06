import 'dart:io';

void main() {
  double sumaTotal = 0;
  int totalEvaluaciones = 5;

  for (int i = 1; i <= totalEvaluaciones; i++) {
    stdout.write('Ingrese la nota $i: ');
    String? entrada = stdin.readLineSync();
    
    double nota = double.parse(entrada!);

    sumaTotal += nota;
  }

  double promedio = sumaTotal / totalEvaluaciones;

  print('Suma total: ${sumaTotal.toStringAsFixed(0)}');
  print('Promedio: ${promedio.toStringAsFixed(1)}');

  if (promedio >= 13) {
    print('Estado: APROBADO');
  } else {
    print('Estado: DESAPROBADO');
  }
}