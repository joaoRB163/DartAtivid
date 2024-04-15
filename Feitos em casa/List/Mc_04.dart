import 'dart:io';

void main() {
  List matriz = [], posic = [0];
  int ler = 0, cont1 = 0, cont2 = 0;
  for (int i = 0; i < 6; i++) {
    matriz.add(List.empty(growable: true));
    cont1 = 0;
    for (int j = 0; j < 6; j++) {
      print("Digite 0 ou 1");
      do {
        ler = int.parse(stdin.readLineSync()!);
        if (ler < 0 || ler > 1) {
          print("Valor inválido. Digite novamente.");
        }
      } while (ler < 0 || ler > 1);
      matriz[i].add(ler);
      if (ler == 0) {
        cont1++;
      }
    }
    if (cont2 < cont1) {
      cont2 = cont1;
      posic[0] = i;
    }
  }

  for (int i = 0; i < matriz.length; i++) {
    cont1 = 0;
    for (int j = 0; j < matriz[i].length; j++) {
      if (matriz[i][j] == 0 && i != posic[0]) {
        cont1++;
      }
    }
    if (cont2 == cont1) {
      posic.add(i);
    }
  }
  posic.sort();
  print("A(s) linha(s) que possui(em) mais valores nulos é(são): $posic");
  print("Sua lista:");
  for (int i = 0; i < matriz.length; i++) {
    stdout.write("Linha $i -> \t");
    print(matriz[i]);
  }
}
