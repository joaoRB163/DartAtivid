import 'dart:io';

void main() {
  List<int> Nums = [];
  int cont = 0;
  for (int i = 1; i <= 15; i++) {
    print("Digite o $i° número");
    Nums.add(int.parse(stdin.readLineSync()!));
  }
  for (int i = 0; i < Nums.length; i++) {
    if (Nums[i] % 2 == 0) {
      cont++;
    }
  }
  print("\nA sua lista:\n$Nums\nTem $cont números pares\n");
}
