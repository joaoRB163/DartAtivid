void main() {
  List<String> lista = [
    'Abacate',
    'Amora',
    'abacaxi',
    'Banana',
    'Leite',
    'Uva',
    'Mexirica',
    'armadura',
    'Verde',
    'arvore',
    'Amoeba',
    'CArro'
  ];
  int cont = RetornoAs(lista);
  print('Essa é sua lista: $lista\n');
  print('Apenas $cont Strings da sua lista começam com a letra A');
}

RetornoAs(List<String> lista) {
  int cont = 0;
  for (int i = 0; i < lista.length; i++) {
    int A = lista[i].indexOf('A') + 1;
    int a = lista[i].indexOf('a') + 1;
    if (a > 0 && a < 2 || A > 0 && A < 2) {
      cont++;
    }
  }
  return cont;
}
