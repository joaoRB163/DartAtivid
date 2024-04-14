import 'dart:io';

void main() {
  int alt = 0, base = 0;
  print("Digite a altura do seu triângulo:");
  alt = int.parse(stdin.readLineSync()!);
  print("Digite a base do triângulo:");
  base = int.parse(stdin.readLineSync()!);
  double result = (base * alt) / 2;
  print("A área do seu triângulo é: $result");
}
