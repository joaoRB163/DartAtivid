import 'dart:io';

void main() {
  List matriz = [];
  int ler = 0;
  for (int i = 0; i < 6; i++) {
    matriz.add(List.empty(growable: true));
    for (int j = 0; j < 6; j++) {
      print("Digite 0 ou 1");
      do {
        ler = int.parse(stdin.readLineSync()!);
        if (ler < 0 || ler > 1) {
          print("Valor inválido. Digite novamente.");
        }
      } while (ler < 0 || ler > 1);
      matriz[i].add(ler);
    }
  }
  print("Olá " + matriz[0]);
}
