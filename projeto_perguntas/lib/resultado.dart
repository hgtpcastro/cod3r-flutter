import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final String texto;

  final int pontuacao;

  Resultado(this.texto, this.pontuacao);

  String get textoResultado {
    if (this.pontuacao < 8) {
      return 'Parabéns!!!';
    } else if (this.pontuacao < 12) {
      return 'Você é bom!!!';
    } else if (this.pontuacao < 16) {
      return 'Impressionante!!!';
    } else {
      return 'Nível Jedi';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Center(
        child: Text(
          textoResultado,
          style: TextStyle(
            fontSize: 28,
          ),
        ),
      ),
    );
  }
}
