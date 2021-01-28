class Data {
  int dia;
  int mes;
  int ano;
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

  print('${dataAniversario.dia}/${dataAniversario.mes}/${dataAniversario.ano}');

  print('${dataCompra.dia}/${dataCompra.mes}/${dataCompra.ano}');
}
