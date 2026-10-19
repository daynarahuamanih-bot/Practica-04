import 'dart:io';

class Vendedor {
  String nombre;
  double montoVentas;

  Vendedor(this.nombre, this.montoVentas);

  double calcularComision() {
    double comision = 0;
    if (montoVentas >= 2000) {
      comision = montoVentas * 0.10; 
    } else {
      comision = montoVentas * 0.05; 
    }
    return comision;
  }

  void mostrarReporte() {
    print('\n--- REPORTE DEL VENDEDOR ---');
    print('Nombre del vendedor: $nombre');
    print('Monto total de ventas: S/ ${montoVentas.toStringAsFixed(2)}');
    print('Comisión obtenida: S/ ${calcularComision().toStringAsFixed(2)}');
  }
}

void main() {
  print('=== ENUNCIADO 3 ===');

  stdout.write('Ingrese el nombre del vendedor: ');
  String nombre = stdin.readLineSync()!;

  stdout.write('Ingrese el monto total de sus ventas (S/): ');
  double montoVentas = double.parse(stdin.readLineSync()!);

  Vendedor vendedor = Vendedor(nombre, montoVentas);
  vendedor.mostrarReporte();
}