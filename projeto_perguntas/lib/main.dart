import 'package:flutter/material.dart';

import './questao.dart';
import './resposta.dart';

main() => runApp(PerguntasApp());

class _PerguntasAppState extends State<PerguntasApp> {
  var _perguntaSelecionada = 0;

  final _perguntas = const [
    {
      'pergunta': 'Qual é a sua cor favoríta?',
      'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco']
    },
    {
      'pergunta': 'Qual é o seu animal favoríto?',
      'respostas': ['Leão', 'Coelho', 'Cobra', 'Elefante']
    },
    {
      'pergunta': 'Qual é o seu time favoríto?',
      'respostas': ['Flamengo', 'Real Madrid', 'Barcelona', 'Juventus']
    }
  ];

  void _responderQuestao() {
    if (temPerguntaSelecionada) {
      setState(() => _perguntaSelecionada++);
    }
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada
        ? _perguntas[_perguntaSelecionada]['respostas']
        : null;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Column(
                children: [
                  Questao(_perguntas[_perguntaSelecionada]['pergunta']),
                  ...respostas
                      .map((t) => Resposta(t, _responderQuestao))
                      .toList(),
                ],
              )
            : Center(
                child: Text(
                  'Parabéns!!!',
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
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
