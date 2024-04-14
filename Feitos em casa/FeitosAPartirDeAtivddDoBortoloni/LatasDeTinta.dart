import 'dart:io';
import 'dart:core';

void main() {
  const int precLata = 80, qntdLata = 5, LitroPinta = 4;
  double alt = 0, larg = 0, A = 0;
  int latas = 0, precTot = 0;
  print("Digite a altura da sua parede:");
  alt = double.parse(stdin.readLineSync()!);
  print("Digite a largura da sua parede:");
  larg = double.parse(stdin.readLineSync()!);
  A = alt * larg;
  double a = (A / LitroPinta) / qntdLata;
  latas = a.round();
  precTot = latas * precLata;
  print(
      "Você irá precisar de aproximadamente $latas latas para pintar sua parede. Isso irá custar R\$$precTot");
}
