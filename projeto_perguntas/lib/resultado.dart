import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final String texto;

  final int pontuacao;

  final void Function() reiniciarQuestionario;

  Resultado(this.texto, this.pontuacao, this.reiniciarQuestionario);

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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            this.textoResultado,
            style: TextStyle(
              fontSize: 28,
            ),
          ),
        ),
        FlatButton(
          child: Text(
            'Reiniciar?',
            style: TextStyle(fontSize: 18),
          ),
          textColor: Colors.blue,
          onPressed: this.reiniciarQuestionario,
        )
      ],
    );
  }
}
