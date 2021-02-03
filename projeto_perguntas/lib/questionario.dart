import 'package:flutter/material.dart';

import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {
  final String pergunta;
  final List<Map<String, Object>> respostas;
  final void Function(int) aoResponderQuestao;

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
          ...respostas.map((resp) {
            return Resposta(
              resp['texto'],
              () => aoResponderQuestao(resp['pontuacao']),
            );
          }).toList(),
        ],
      ),
    );
  }
}
