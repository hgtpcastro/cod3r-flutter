import 'package:flutter/material.dart';

import './questionario.dart';
import './resultado.dart';

main() => runApp(PerguntasApp());

class _PerguntasAppState extends State<PerguntasApp> {
  var _perguntaSelecionada = 0;

  final _perguntas = const [
    {
      'pergunta': 'Qual é a sua cor favoríta?',
      'respostas': [
        {'texto': 'Vermelho', 'nota': 10},
        {'texto': 'Preto', 'nota': 5},
        {'texto': 'Verde', 'nota': 3},
        {'texto': 'Branco', 'nota': 1},
      ]
    },
    {
      'pergunta': 'Qual é o seu animal favoríto?',
      'respostas': [
        {'texto': 'Leão', 'nota': 10},
        {'texto': 'Coelho', 'nota': 5},
        {'texto': 'Cobra', 'nota': 3},
        {'texto': 'Elefante', 'nota': 1},
      ]
    },
    {
      'pergunta': 'Qual é o seu time favoríto?',
      'respostas': [
        {'texto': 'Flamengo', 'nota': 10},
        {'texto': 'Real Madrid', 'nota': 5},
        {'texto': 'Barcelona', 'nota': 3},
        {'texto': 'Juventus', 'nota': 1},
      ]
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
    List<Map<String, Object>> respostas = temPerguntaSelecionada
        ? _perguntas[_perguntaSelecionada]['respostas']
        : null;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                pergunta: _perguntas[_perguntaSelecionada]['pergunta'],
                respostas: respostas,
                aoResponderQuestao: _responderQuestao,
              )
            : Resultado('Parabéns!!!'),
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
