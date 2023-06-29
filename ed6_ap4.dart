 academy_pratica_e6

void main() {
  try {
    final nomeArquivo = lerNomeArquivo();
    ArquivoTexto arquivoTexto = ArquivoTexto(nomeArquivo);
    arquivoTexto.abrir();
  } catch (e) {
    print(e);
  } finally {
    print("Fim do programa");
  }
}

String lerNomeArquivo() {
  print("Digite o nome do arquivo:");
  String nome = 'bloco.txt';

  if (nome.isEmpty) {
    throw Exception('Entrada inválida. Digite um nome válido.');
  }
  return nome;
}

abstract class Arquivo {
  void abrir();
}

class ArquivoTexto implements Arquivo {
  final String nome;

  ArquivoTexto(this.nome);

  @override
  void abrir() {
    try {
      throw Exception("Erro ao abrir o arquivo $nome");
    } catch (e) {
      print('Relançar a exceção');
      rethrow;
    }
  }
}
