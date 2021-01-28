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

  Data.com({this.dia = 1, this.mes = 1, this.ano = 1970});

  Data.ultimoDiaDoAno(this.ano) {
    dia = 31;
    mes = 12;
  }

  String obterFormatada() {
    return '$dia/$mes/$ano';
  }

  String toString() {
    return obterFormatada();
  }
}

main() {
  var dataAniversario = new Data(22, 02, 1980);

  var dataCompra = new Data(01, 01, 2021);
  dataCompra.dia = 31;
  dataCompra.mes = 12;
  dataCompra.ano = 2021;

  var da = dataAniversario.obterFormatada();

  print('A data de aniversário é: $da');

  print('A data da compra é: ${dataCompra.obterFormatada()}');

  print(dataCompra);
  print(dataCompra.toString());

  print(Data.com(ano: 2022));

  var dataFinal = Data.com(dia: 12, mes: 7, ano: 2024);
  print(dataFinal);

  print(Data.ultimoDiaDoAno(2023));
}
