main() {
  //
  int a = 3;
  int b = 4;

  // Operadores unários
  a++; // Posfix
  --a; // Prefix

  print(a);

  print(a++ == --b);
  print(a == b);

  // Operadores lógico unário -> NOT
  print(!true);
  print(!false);

  bool x = false;
  print(!x);
}
