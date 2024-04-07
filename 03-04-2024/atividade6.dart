import 'dart:io';

int soma(int a, int b) {
  return a + b;
}

//👇Esse Run(Visual Studio Code) apenas debuga o código e não funciona a inserção de dados por ele
void main() {
  //Para resolver:
  //1° passo --> Baixar a extensão do VSCode chamada "Code Runner";
  //2° passo --> Acessar as configurações da extensão e ativar a opção "Run in Terminal";
  //3° passo --> Clicar no botão de run do canto superior direito da tela.
  print('Digite o primeiro valor:');
  String Num1 = stdin.readLineSync()!;
  print('Digite o segundo valor:');
  String Num2 = stdin.readLineSync()!;
  int a = int.parse(Num1), b = int.parse(Num2);
  int somar = soma(a, b);
  print('Sua soma é: $somar');
}
