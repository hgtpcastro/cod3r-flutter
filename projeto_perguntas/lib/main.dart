import 'package:flutter/material.dart';

import './questao.dart';
import './resposta.dart';

main() => runApp(PerguntasApp());

class _PerguntasAppState extends State<PerguntasApp> {
  var _perguntaSelecionada = 0;

  void _responderQuestao() {
    setState(() => _perguntaSelecionada++);
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
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

    List<String> respostas = perguntas[_perguntaSelecionada]['respostas'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]['pergunta']),
            ...respostas.map((t) => Resposta(t, _responderQuestao)).toList(),
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
