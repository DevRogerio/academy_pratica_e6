# academy_pratica_e6

import 'dart:math';

void main() {
  try {
    Retangulo retangulo =
        Retangulo(base: gerarNumeroAleatorio(), altura: gerarNumeroAleatorio());
    double area = retangulo.calcularArea();
    print("Área do retângulo: ${area.toStringAsFixed(2)}");
  } catch (e) {
    print("Exception: $e");
  }
}

double gerarNumeroAleatorio() => Random().nextDouble() * 100;

abstract class Forma {
  double calcularArea();
}

class Retangulo implements Forma {
  double base;
  double altura;

  Retangulo({required this.base, required this.altura})
      : assert(base > 0 && altura > 0);

  @override
  double calcularArea() => base * altura;
}
