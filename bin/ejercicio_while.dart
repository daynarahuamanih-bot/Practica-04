import 'dart:io';

void main() {
  print('==============================================');
  print('          SISTEMA ACADÉMICO / COMPRAS         ');
  print('==============================================');
  print('1. Validar acceso de estudiante');
  print('2. Evaluar rendimiento académico');
  print('3. Calcular costo de matrícula');
  print('4. Calcular costo de envío');
  stdout.write('Ingrese una opción (1-4): ');
  
  String? menuOpcao = stdin.readLineSync()?.trim();
  print('----------------------------------------------\n');

  if (menuOpcao == '1') {
    procesarEjercicio1();
  } else if (menuOpcao == '2') {
    procesarEjercicio2();
  } else if (menuOpcao == '3') {
    procesarEjercicio3();
  } else if (menuOpcao == '4') {
    procesarEjercicio4();
  } else {
    print('Opción no válida.');
  }
}


void procesarEjercicio1() {
  stdout.write('Ingrese el usuario: ');
  String user = stdin.readLineSync()?.toLowerCase().trim() ?? '';

  stdout.write('Ingrese la clave: ');
  String pass = stdin.readLineSync()?.trim() ?? '';

  stdout.write('¿Estado activo? (si/no): ');
  String estado = stdin.readLineSync()?.toLowerCase().trim() ?? '';

  bool datosCorrectos = (user == 'estudiante') && (pass == '12345') && (estado == 'si');

  if (datosCorrectos) {
    print('\nAcceso permitido. Bienvenido al sistema.');
  } else {
    print('\nAcceso denegado. Verifique sus datos.');
  }
}

// -------------------------------------------------------------------
// 2. Clasificación del rendimiento académico
// -------------------------------------------------------------------
void procesarEjercicio2() {
  stdout.write('Nombre completo del alumno: ');
  String alumno = stdin.readLineSync() ?? '';

  stdout.write('Ingrese la nota final (0-20): ');
  double notaFinal = double.tryParse(stdin.readLineSync() ?? '') ?? 0;

  stdout.write('Ingrese el porcentaje de asistencia (0-100): ');
  double asistencia = double.tryParse(stdin.readLineSync() ?? '') ?? 0;

  print('\nEstudiante: $alumno');

  if (notaFinal >= 18 && asistencia >= 90) {
    print('Rendimiento excelente.');
  } else if (notaFinal >= 14 && asistencia >= 80) {
    print('Rendimiento satisfactorio.');
  } else if (notaFinal >= 11 && asistencia >= 70) {
    print('Rendimiento básico.');
  } else {
    print('Debe mejorar su rendimiento académico.');
  }
}

// -------------------------------------------------------------------
// 3. Costo de matrícula
// -------------------------------------------------------------------
void procesarEjercicio3() {
  print('===== PROGRAMAS DE ESTUDIO =====');
  print('1. Desarrollo de Sistemas de Información');
  print('2. Enfermería Técnica');
  print('3. Contabilidad');
  print('4. Administración de Empresas');
  stdout.write('Seleccione una carrera (1-4): ');
  
  String carreraOp = stdin.readLineSync()?.trim() ?? '';
  String nombreCarrera = '';
  double tarifa = 0;

  switch (carreraOp) {
    case '1':
      nombreCarrera = 'Desarrollo de Sistemas de Información';
      tarifa = 180;
      break;
    case '2':
      nombreCarrera = 'Enfermería Técnica';
      tarifa = 150;
      break;
    case '3':
      nombreCarrera = 'Contabilidad';
      tarifa = 160;
      break;
    case '4':
      nombreCarrera = 'Administración de Empresas';
      tarifa = 140;
      break;
    default:
      print('\nOpción no válida.');
      return;
  }

  stdout.write('¿Tiene descuento? (si/no): ');
  String desc = stdin.readLineSync()?.toLowerCase().trim() ?? '';

  double rebaja = (desc == 'si') ? tarifa * 0.10 : 0.0;
  double pagoFinal = tarifa - rebaja;

  print('\nPrograma seleccionado: $nombreCarrera');
  print('Precio original: S/ ${tarifa.toStringAsFixed(2)}');
  print('Descuento aplicado: S/ ${rebaja.toStringAsFixed(2)}');
  print('Total a pagar: S/ ${pagoFinal.toStringAsFixed(2)}');
}

// -------------------------------------------------------------------
// 4. Costo de envío de una compra
// -------------------------------------------------------------------
void procesarEjercicio4() {
  stdout.write('Ingrese el monto de la compra (S/): ');
  double compraMonto = double.tryParse(stdin.readLineSync() ?? '') ?? 0;

  print('\n===== ZONA DE ENTREGA =====');
  print('1. Zona urbana');
  print('2. Zona periférica');
  print('3. Zona rural');
  stdout.write('Seleccione número de zona (1-3): ');
  
  String zonaOp = stdin.readLineSync()?.trim() ?? '';
  double flete = 0;

  if (compraMonto >= 200) {
    if (zonaOp == '1' || zonaOp == '2' || zonaOp == '3') {
      flete = 0;
    } else {
      print('\nZona de entrega no válida.');
      return;
    }
  } else {
    if (zonaOp == '1') {
      flete = 8;
    } else if (zonaOp == '2') {
      flete = 15;
    } else if (zonaOp == '3') {
      flete = 25;
    } else {
      print('\nZona de entrega no válida.');
      return;
    }
  }

  double totalCalculado = compraMonto + flete;

  print('\nMonto de compra: S/ ${compraMonto.toStringAsFixed(2)}');
  print('Costo de envío: S/ ${flete.toStringAsFixed(2)}');
  print('Total a pagar: S/ ${totalCalculado.toStringAsFixed(2)}');
}