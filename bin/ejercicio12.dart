import 'dart:io';

void main() {
  List<String> productos = [
    "Laptop",
    "Mouse",
    "Teclado",
    "Monitor",
    "Impresora"
  ];

  print("===== LISTA DE PRODUCTOS INICIAL =====");
  for (int i = 0; i < productos.length; i++) {
    print("${i + 1}. ${productos[i]}");
  }

  print("\n-------------------------------------");
  stdout.write("Ingrese el nombre de un nuevo producto: ");
  String? nuevoProducto = stdin.readLineSync();

  if (nuevoProducto != null && nuevoProducto.trim().isNotEmpty) {
    productos.add(nuevoProducto.trim());
    print("¡Producto agregado correctamente!");
  } else {
    print("No se ingresó un producto válido.");
  }

  print("\n===== LISTA DE PRODUCTOS ACTUALIZADA =====");
  for (int i = 0; i < productos.length; i++) {
    print("${i + 1}. ${productos[i]}");
  }

  print("\nCantidad total de productos: ${productos.length}");
  print("-------------------------------------");

  print("iestph");
}