class Clima {
  double _temperatura;

  Clima(this._temperatura);

  double get temperatura => _temperatura;

  set temperatura(double nuevaTemp) {
    if (nuevaTemp >= -20 && nuevaTemp <= 50) {
      _temperatura = nuevaTemp;
    } else {
      print('\nTemperatura no válida. Debe estar entre -20 °C y 50 °C.');
    }
  }

  void mostrarEstado() {
    if (_temperatura < 10) {
      print('Estado: Hace frío');
    } else if (_temperatura >= 10 && _temperatura <= 24) {
      print('Estado: Temperatura agradable');
    } else {
      print('Estado: Hace calor');
    }
  }
}

void main() {
  print('===== CONTROL DEL CLIMA =====');

  Clima clima = Clima(18);
  print('Temperatura inicial: ${clima.temperatura} °C');
  clima.mostrarEstado();

  print('\nActualizando temperatura a 28 °C...');
  clima.temperatura = 28;
  print('Temperatura actual: ${clima.temperatura} °C');
  clima.mostrarEstado();

  print('\nIntentando asignar 60 °C...');
  clima.temperatura = 60;
  print('Temperatura actual registrada: ${clima.temperatura} °C');
}