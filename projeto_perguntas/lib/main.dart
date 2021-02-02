import 'package:flutter/material.dart';

import './questao.dart';

main() => runApp(PerguntasApp());

class _PerguntasAppState extends State<PerguntasApp> {
  var _perguntaSelecionada = 0;

  void _responderPergunta() {
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
            RaisedButton(
              child: Text('Resposta 1'),
              onPressed: _responderPergunta,
            ),
            RaisedButton(
              child: Text('Resposta 2'),
              onPressed: () {
                setState(() => _perguntaSelecionada = 0);
                print('Resposta 2 foi selecionada.');
              },
            ),
            RaisedButton(
              child: Text('Resposta 3'),
              onPressed: _responderPergunta,
            ),
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
