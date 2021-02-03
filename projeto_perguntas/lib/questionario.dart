import 'package:flutter/material.dart';

import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {
  final String pergunta;
  final List<String> respostas;
  final void Function() aoResponderQuestao;

  Questionario({
    @required this.pergunta,
    @required this.respostas,
    @required this.aoResponderQuestao,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Questao(pergunta),
          ...respostas.map((t) => Resposta(t, aoResponderQuestao)).toList(),
        ],
      ),
    );
  }
}
