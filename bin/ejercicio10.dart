import 'dart:io';

void main() {
  double saldo = 500.0;
  int opcion = 0;

  while (opcion != 4) {
    print("\n===== CAJERO AUTOMÁTICO =====");
    print("1. Consultar saldo");
    print("2. Retirar dinero");
    print("3. Depositar dinero");
    print("4. Salir");
    stdout.write("Seleccione una opción: ");

    String? entrada = stdin.readLineSync();
    if (entrada != null && entrada.isNotEmpty) {
      opcion = int.parse(entrada);
    } else {
      opcion = 0;
    }

    if (opcion == 1) {
      print("Saldo disponible: S/ ${saldo.toStringAsFixed(2)}");
    } else if (opcion == 2) {
      stdout.write("Ingrese el monto a retirar: S/ ");
      double montoRetiro = double.parse(stdin.readLineSync()!);

      if (montoRetiro <= 0) {
        print("El monto debe ser mayor que cero.");
      } else if (montoRetiro > saldo) {
        print("Error: No se puede retirar un monto mayor al saldo disponible.");
      } else {
        saldo -= montoRetiro; 
        print("Retiro exitoso. Se retiró S/ ${montoRetiro.toStringAsFixed(2)}.");
        print("Nuevo saldo disponible: S/ ${saldo.toStringAsFixed(2)}");
      }
    } else if (opcion == 3) {
      stdout.write("Ingrese el monto a depositar: S/ ");
      double montoDeposito = double.parse(stdin.readLineSync()!);

      if (montoDeposito > 0) {
        saldo += montoDeposito; 
        print("Depósito exitoso. Se depositó S/ ${montoDeposito.toStringAsFixed(2)}.");
        print("Nuevo saldo disponible: S/ ${saldo.toStringAsFixed(2)}");
      } else {
        print("Error: El monto a depositar debe ser mayor que cero.");
      }
    } else if (opcion == 4) {
      print("Gracias por usar el cajero automático. ¡Hasta luego!");
    } else {
      print("Opción inválida. Por favor, seleccione una opción del 1 al 4.");
    }
  }
}