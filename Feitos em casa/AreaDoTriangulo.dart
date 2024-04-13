import 'dart:io';

void main() {
  int alt = 0, base = 0;
  print("Digite a altura do seu triângulo:");
  String a = stdin.readLineSync()!;
  alt = int.parse(a);
  print("Digite a base do triângulo:");
  String b = stdin.readLineSync()!;
  base = int.parse(b);
  double result = (base * alt) / 2;
  print("A área do seu triângulo é: $result");
}
