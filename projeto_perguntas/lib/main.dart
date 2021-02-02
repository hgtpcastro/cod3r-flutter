import 'package:flutter/material.dart';

import './questao.dart';
import './resposta.dart';

main() => runApp(PerguntasApp());

class _PerguntasAppState extends State<PerguntasApp> {
  var _perguntaSelecionada = 0;

  void _responderQuestao() {
    setState(() => _perguntaSelecionada++);
    print(_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a sua cor favoríta?',
      'Qual é o seu animal favoríto?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]),
            Resposta('Resposta 1', _responderQuestao),
            Resposta('Resposta 2', () {
              setState(() {
                _perguntaSelecionada = 0;
              });
            }),
            Resposta('Resposta 3', _responderQuestao),
          ],
        ),
      ),
    );
  }
}

class PerguntasApp extends StatefulWidget {
  @override
  _PerguntasAppState createState() {
    return _PerguntasAppState();
  }
}
