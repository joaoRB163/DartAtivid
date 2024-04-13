import 'dart:io';
import 'dart:math';

void main() {
  List<int> pontos = [];
  double d = 0;
  String a;
  print("Digite o X do ponto A");
  a = stdin.readLineSync()!;
  pontos.add(int.parse(a));
  print("Digite o Y do ponto A");
  a = stdin.readLineSync()!;
  pontos.add(int.parse(a));
  print("Digite o X do ponto B");
  a = stdin.readLineSync()!;
  pontos.add(int.parse(a));
  print("Digite o Y do ponto B");
  a = stdin.readLineSync()!;
  pontos.add(int.parse(a));
  d = sqrt(pow(pontos[0] - pontos[2], 2) + pow(pontos[1] - pontos[3], 2));
  print("A distância dos dois pontos é: $d");
}
