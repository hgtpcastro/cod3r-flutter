import 'dart:io';

main() {
  /// Área da circunfêrencia = PI * raio * raio
  const PI = 3.1415;

  stdout.write('Informe o raio: ');
  final entradaDoUsuario = stdin.readLineSync();
  final double raio = double.parse(entradaDoUsuario);

  var area = PI * raio * raio;
  print('O valor da área é: $area');
}
