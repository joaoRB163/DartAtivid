void main() {
  List<int> NumList = [10, 15, 3, 64, 8, 95, 14, 13, 27];
  List<int> Pares = NumsPares(NumList);
  print('Essa é sua lista numérica: $NumList\n');
  print('Essa é a lista que contém todos os números pares: $Pares');
}

NumsPares(List<int> NumList) {
  List<int> NumPares = [];
  for (int i = 0; i < NumList.length; i++) {
    if (NumList[i] % 2 == 0) {
      NumPares.add(NumList[i]);
    }
  }
  return NumPares;
}
