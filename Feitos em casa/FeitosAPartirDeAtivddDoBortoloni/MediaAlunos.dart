import 'dart:io';

void main() {
  List<double> NotasAlunos = [];
  double nota = 0, soma = 0;
  for (int i = 1; i <= 10; i++) {
    do {
      print("Digite a nota do $i° aluno (0-10)");
      nota = leitor();
      if (nota < 0 || nota > 10) {
        print("Erro na nota! Digite a nota novamente!");
      }
    } while (nota < 0 || nota > 10);
    NotasAlunos.add(nota);
  }
  for (int i = 0; i < NotasAlunos.length; i++) {
    soma = soma + NotasAlunos[i];
  }
  final double media = soma / NotasAlunos.length;
  print("A média da turma foi: $media");
}

leitor() {
  String ler = stdin.readLineSync()!;
  double a = double.parse(ler);
  return a;
}
