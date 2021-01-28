class Data {
  int dia;
  int mes;
  int ano;

  String obterFormatada() {
    return '${dia}/${mes}/${ano}';
  }

  String toString() {
    return obterFormatada();
  }
}

main() {
  var dataAniversario = new Data();
  dataAniversario.dia = 22;
  dataAniversario.mes = 02;
  dataAniversario.ano = 1980;

  var dataCompra = new Data();
  dataCompra.dia = 31;
  dataCompra.mes = 12;
  dataCompra.ano = 2021;

  var da = dataAniversario.obterFormatada();

  print('A data de aniversário é: $da');

  print('A data da compra é: ${dataCompra.obterFormatada()}');

  print(dataCompra);
  print(dataCompra.toString());
}
