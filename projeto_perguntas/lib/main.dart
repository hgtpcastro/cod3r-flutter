import 'package:flutter/material.dart';

import './questionario.dart';
import './resultado.dart';

main() => runApp(PerguntasApp());

class _PerguntasAppState extends State<PerguntasApp> {
  var _perguntaSelecionada = 0;

  var _pontuacaoTotal = 0;

  final _perguntas = const [
    {
      'pergunta': 'Qual é a sua cor favoríta?',
      'respostas': [
        {'texto': 'Vermelho', 'pontuacao': 10},
        {'texto': 'Preto', 'pontuacao': 5},
        {'texto': 'Verde', 'pontuacao': 3},
        {'texto': 'Branco', 'pontuacao': 1},
      ]
    },
    {
      'pergunta': 'Qual é o seu animal favoríto?',
      'respostas': [
        {'texto': 'Leão', 'pontuacao': 10},
        {'texto': 'Coelho', 'pontuacao': 5},
        {'texto': 'Cobra', 'pontuacao': 3},
        {'texto': 'Elefante', 'pontuacao': 1},
      ]
    },
    {
      'pergunta': 'Qual é o seu time favoríto?',
      'respostas': [
        {'texto': 'Flamengo', 'pontuacao': 10},
        {'texto': 'Real Madrid', 'pontuacao': 5},
        {'texto': 'Barcelona', 'pontuacao': 3},
        {'texto': 'Juventus', 'pontuacao': 1},
      ]
    }
  ];

  void _responderQuestao(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
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
            : Resultado('Parabéns!!!', _pontuacaoTotal, _reiniciarQuestionario),
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
