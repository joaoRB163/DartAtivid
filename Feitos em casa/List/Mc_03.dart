import 'dart:io';

void main() {
  List<int> Idades = [], MaioresDeIdd = [];
  int lerIdd = 0;
  for (int i = 0; i < 12; i++) {
    do {
      print("Digite a idade da pessoa:");
      lerIdd = int.parse(stdin.readLineSync()!);
      if (lerIdd < 0) {
        print("Uma pessoa não pode ter idade negativa");
      } else if (lerIdd > 130) {
        print("Não é possível viver mais que 130 anos");
      }
    } while (lerIdd < 0 || lerIdd > 130);
    Idades.add(lerIdd);
    if (lerIdd >= 18) {
      MaioresDeIdd.add(lerIdd);
    }
  }
  print("A sua lista de idades: \n$Idades");
  Idades.sort();
  MaioresDeIdd.sort();
  print("\nLista organizada em ordem crescente: \n$Idades");
  print("\nLista com maiores de idade:\n$MaioresDeIdd\n");
}
