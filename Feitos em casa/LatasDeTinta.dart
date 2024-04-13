import 'dart:io';
import 'dart:core';

void main() {
  const int precLata = 80, qntdLata = 5, LitroPinta = 4;
  double alt = 0, larg = 0, A = 0;
  int latas = 0, precTot = 0;
  String ler;
  print("Digite a altura da sua parede:");
  ler = stdin.readLineSync()!;
  alt = double.parse(ler);
  print("Digite a largura da sua parede:");
  ler = stdin.readLineSync()!;
  larg = double.parse(ler);
  A = alt * larg;
  double a = (A / LitroPinta) / qntdLata;
  latas = a.round();
  precTot = latas * precLata;
  print(
      "Você irá precisar de aproximadamente $latas latas para pintar sua parede. Isso irá custar R\$$precTot");
}
