import 'dart:io';

void main() {
  List Notas = [];
  int qntdAlunos = 0, leitor = 0;

  do {
    print("Digite a quantidade de alunos que existem na sua turma");
    qntdAlunos = int.parse(stdin.readLineSync()!);
    if (qntdAlunos < 0 || qntdAlunos > 45) {
      print("Uma turma não pode conter esse valor. Digite novamente.");
    }
  } while (qntdAlunos < 0 || qntdAlunos > 45);

  for (int i = 0; i < qntdAlunos; i++) {
    Notas.add(List.empty(growable: true));
    for (int j = 1; j <= 2; j++) {
      stdout.write("Digite a nota do $j° bimestre do ");
      stdout.write(i + 1);
      print("° aluno: ");
      do {
        leitor = int.parse(stdin.readLineSync()!);
        if (leitor < 0 || leitor > 100) {
          print("A sua nota não pode receber esse valor.");
        }
      } while (leitor < 0 || leitor > 100);
      Notas[i].add(leitor);
    }
    double med = (Notas[i][0] + Notas[i][1]) / 2;
    Notas[i].add(med);
    if (med >= 60) {
      Notas[i].add("Aprovado");
    } else {
      Notas[i].add("Reprovado");
    }
  }
  print("Nota 1\tNota 2\tMédia\tSituação");
  for (int i = 0; i < qntdAlunos; i++) {
    for (int j = 0; j < Notas[i].length; j++) {
      stdout.write(Notas[i][j]);
      stdout.write("\t");
    }
    print("");
  }
}
