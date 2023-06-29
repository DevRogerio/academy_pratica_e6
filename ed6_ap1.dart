# academy_pratica_e6


  void main() {
  String input = "9999";
  convertToInt(input);
}

void convertToInt(String input) {
  int number;

  try {
    number = int.parse(input);
  } catch (FormatException) {
    print("Entrada inválida. Insira apenas números inteiros.");
    return;
  }

  print("Número digitado: $number");
}
