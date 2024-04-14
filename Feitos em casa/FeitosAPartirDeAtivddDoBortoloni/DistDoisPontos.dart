import 'dart:io';
import 'dart:math';

void main() {
  List<int> pontos = [];
  double d = 0;
  print("Digite o X do ponto A");
  pontos.add(int.parse(stdin.readLineSync()!));
  print("Digite o Y do ponto A");
  pontos.add(int.parse(stdin.readLineSync()!));
  print("Digite o X do ponto B");
  pontos.add(int.parse(stdin.readLineSync()!));
  print("Digite o Y do ponto B");
  pontos.add(int.parse(stdin.readLineSync()!));
  d = sqrt(pow(pontos[0] - pontos[2], 2) + pow(pontos[1] - pontos[3], 2));
  print("A distância dos dois pontos é: $d");
}
