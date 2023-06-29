 academy_pratica_e6

void main() {
  try {
    programa(10);
    print("Entrada correta, você inseriu um número par.");
  } catch (e) {
    print("Exception: $e");
  }
}

void programa(int numero) {
  if (numero.isOdd) {
    throw Exception('Entrada inválida. Insira apenas números pares.');
  }
}
