void main() {
  List<int> NumList = [1, 2, 45, 2, 5, 8, 23, 10, 12];
  double med = MedNums(NumList);
  print('Sua lista númerica: $NumList\n');
  print('A média dos números é: $med');
}

MedNums(List<int> ListaNum) {
  double med = 0;
  for (int i = 0; i < ListaNum.length; i++) {
    med += ListaNum[i];
  }
  return med / ListaNum.length;
}
