import 'dart:io';

class Producto {
  String nombre;
  double precio;
  int disponible; 

  Producto(this.nombre, this.precio, this.disponible);

  double calcularValorInventario() {
    return precio * disponible;
  }

 String determinarStock() {
    if (disponible == 0) {
      return 'Stock agotado';
    } else if (disponible >= 1 && disponible <= 5) {
      return 'Stock bajo';
    } else {
      return 'Stock suficiente';
    }
 }

void mostrarInformacion() {
    print('\n--- INFORMACIÓN DEL PRODUCTO ---');
    print('Nombre del producto: $nombre');
    print('Precio unitario: S/ ${precio.toStringAsFixed(2)}');
    print('Cantidad disponible: $disponible');
    print('Valor total del inventario: S/ ${calcularValorInventario().toStringAsFixed(2)}');
    print('Estado del stock: ${determinarStock()}');
  }
}

void main() {
  stdout.write('Ingrese el nombre del producto: ');
  String nombre = stdin.readLineSync()!;

  stdout.write('Ingrese el precio unitario del producto: ');
  double precio = double.parse(stdin.readLineSync()!);

  stdout.write('Ingrese la cantidad disponible: ');
  int disponible = int.parse(stdin.readLineSync()!);

  Producto producto = Producto(nombre, precio, disponible);
  
  producto.mostrarInformacion();
}