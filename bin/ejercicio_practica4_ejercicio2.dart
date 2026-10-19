import 'dart:io';

class Producto {
  String nombre;
  double precio;

  Producto(this.nombre, this.precio);

  void mostrarInformacion() {
    double descuento = 0;

    if (precio >= 100) {
      descuento = precio * 0.10;
    }

    double precioFinal = precio - descuento;

    print('\nProducto: $nombre');
    print('Precio original: S/ ${precio.toStringAsFixed(2)}');
    print('Descuento: S/ ${descuento.toStringAsFixed(2)}');
    print('Precio final: S/ ${precioFinal.toStringAsFixed(2)}');
  }
}

void main() {
  print('===== REGISTRO DE PRODUCTO =====');

  // Lectura de datos por consola
  stdout.write('Ingrese el nombre del producto: ');
  String nombre = stdin.readLineSync()!;

  stdout.write('Ingrese el precio del producto: ');
  double precio = double.parse(stdin.readLineSync()!);

  Producto producto = Producto(nombre, precio);
  producto.mostrarInformacion();
}