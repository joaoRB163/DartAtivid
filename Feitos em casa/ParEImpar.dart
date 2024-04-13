import 'dart:io';

void main() {
  List<int> Nums = [];
  int contPar = 0, contImpar = 0;
  String ler;
  for (int i = 1; i <= 3; i++) {
    print("Digite o número $i");
    ler = stdin.readLineSync()!;
    Nums.add(int.parse(ler));
  }
  for (int i = 0; i < Nums.length; i++) {
    if (Nums[i] % 2 == 0) {
      contPar++;
    } else {
      contImpar++;
    }
  }
  print("$contImpar impar(es) e $contPar par(es)");
}
