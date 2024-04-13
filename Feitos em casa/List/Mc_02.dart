import 'dart:io';

void main() {
  List<double> Salarios = [], Maiores = [];
  double soma = 0, ler;
  for (int i = 0; i < 10; i++) {
    do {
      print("Digite o salário do empregado");
      ler = leitor();
      if (ler < 1400) {
        print("O empregado deve receber acima de um salário mínimo (R\$1400)");
      }
    } while (ler < 1400);
    Salarios.add(ler);
    soma = soma + Salarios[i];
  }
  final double med = soma / Salarios.length;
  print("A média salarial do grupo é de R\$$med");
  for (int i = 0; i < Salarios.length; i++) {
    if (Salarios[i] > med) {
      Maiores.add(Salarios[i]);
    }
  }
  Maiores.sort();
  print("\nOs salários maiores que a média do grupo são:\n$Maiores\n");
}

leitor() {
  String ler = stdin.readLineSync()!;
  double a = double.parse(ler);
  return a;
}
