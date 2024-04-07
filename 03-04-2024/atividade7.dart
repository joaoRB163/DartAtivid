void main() {
  List lista = [1, 25, 64, 8, 6, 41, 8];
  print('Sua lista: $lista\n');
  lista.sort();
  int maior = lista[lista.length - 1];
  print('O maior número da sua lista é: $maior');
}
