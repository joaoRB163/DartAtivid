import 'dart:io';

void main() {
  List<int> Idades = [];
  int idd = 0;
  print("Digite a idade do primeiro filho");
  Idades.add(leitor());
  print("Digite a idade do segundo filho");
  Idades.add(leitor());
  do {
    print("Digite a idade da Dona Maria");
    idd = leitor();
    if (Idades[0] + Idades[1] >= idd) {
      int acima = Idades[0] + Idades[1] + 1;
      print("Idade inválida, digite um valor acima de: $acima");
    } else {
      Idades.add(idd);
    }
  } while (Idades[0] + Idades[1] >= idd);
  int TercFilho = Idades[2] - (Idades[0] + Idades[1]);
  print("A idade do terceiro filho é: $TercFilho");
  Idades.add(TercFilho);
  Idades.sort();
  int MaisVelho = Idades[Idades.length - 2];
  print("A idade do filho mais velho é: $MaisVelho");
}

leitor() {
  String ler = stdin.readLineSync()!;
  int a = int.parse(ler);
  return a;
}
