import 'dart:io';

void main() {
  const double fret1 = 19.90, fret2 = 69.90, fret3 = 249.50;
  int Tam = 0;
  double prec = 0;
  print("Digite o tamanho do seu produto (1 à +120 cm)");
  Tam = int.parse(stdin.readLineSync()!);
  print("Digite o preço do seu produto");
  prec = double.parse(stdin.readLineSync()!);
  if (Tam <= 0) {
    print("Tamanho digitado errado");
  } else if (Tam <= 15) {
    print("Seu frete é grátis. O preço total da sua compra é: R\$$prec");
  } else if (Tam <= 50) {
    final precFinal = prec + fret1;
    print(
        "Seu frete é de R\$$fret1, o preço total da sua compra é: R\$$precFinal");
  } else if (Tam <= 120) {
    final precFinal = prec + fret2;
    print(
        "Seu frete é de R\$$fret2, o preço total da sua compra é: R\$$precFinal");
  } else if (Tam > 120) {
    final precFinal = prec + fret3;
    print(
        "Seu frete é de R\$$fret3, o preço total da sua compra é: R\$$precFinal");
  } else {
    print("ERROR");
  }
}
