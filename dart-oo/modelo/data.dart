class Data {
  int dia;
  int mes;
  int ano;

  // Data(int dia, int mes, int ano) {
  //   this.dia = dia;
  //   this.mes = mes;
  //   this.ano = ano;
  // }

  Data([this.dia = 1, this.mes = 1, this.ano = 1970]);

  String obterFormatada() {
    return '${dia}/${mes}/${ano}';
  }

  String toString() {
    return obterFormatada();
  }
}

main() {
  var dataAniversario = new Data(22, 02, 1980);
  // dataAniversario.dia = 22;
  // dataAniversario.mes = 02;
  // dataAniversario.ano = 1980;

  var dataCompra = new Data(01, 01, 2021);
  dataCompra.dia = 31;
  dataCompra.mes = 12;
  dataCompra.ano = 2021;

  var da = dataAniversario.obterFormatada();

  print('A data de aniversário é: $da');

  print('A data da compra é: ${dataCompra.obterFormatada()}');

  print(dataCompra);
  print(dataCompra.toString());

  print(new Data());
  print(Data(31));
  print(Data(31, 12));
  print(Data(31, 12, 2021));
}
