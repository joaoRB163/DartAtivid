void main() {
  List matriz = [];

  //adiciona um vetor novo dentro da matriz
  matriz.add(List.empty(growable: true));

  //seleciona um vetor e adiciona dentro do vetor2 um valor de qualquer tipo de dado
  matriz[0].add("Olá");
  print("$matriz");
}
