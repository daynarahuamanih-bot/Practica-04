import 'dart:io';

class RegistroTemperaturas {
  List<double> temperaturas = [];

  void registrarTemperaturas(){
    print("\n---REGISTRO DE TEMPERATURAS---");
    for  (int i = 1; i <= 5; i++) {
      stdout.write('Ingrese la temperatura del día $i (°C): ');
      double temp = double.parse(stdin.readLineSync()!);
      temperaturas.add(temp);
    }
  }
  double calcularPromedio() {
    if (temperaturas.isEmpty) return 0.0;
    double suma = 0;
    for (var temp in temperaturas) {
      suma += temp;
    }
    return suma / temperaturas.length;
  }

  int contarDiasCalurosos() {
    int contador = 0;
    for (var temp in temperaturas) {
      if (temp > 30) {
        contador++;
      }
    }
    return contador;
  }

  void mostrarReporte() {
    print('\n--- REPORTE DE TEMPERATURAS ---');
    print('Promedio semanal: ${calcularPromedio().toStringAsFixed(2)} °C');
    print('Cantidad de días calurosos (> 30 °C): ${contarDiasCalurosos()}');
  }
}

void main() {
  print('=== ENUNCIADO 4 ===');

  RegistroTemperaturas registro = RegistroTemperaturas();
  
  registro.registrarTemperaturas();
  registro.mostrarReporte();
}