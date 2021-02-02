import 'package:flutter/material.dart';

main() => runApp(PerguntasApp());

class PerguntasAppState extends State<PerguntasApp> {
  var perguntaSelecionada = 0;

  void responderPergunta() {
    setState(() => perguntaSelecionada++);
    print(perguntaSelecionada);
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
            Text(perguntas[perguntaSelecionada]),
            RaisedButton(
              child: Text('Resposta 1'),
              onPressed: () => responderPergunta(),
            ),
            RaisedButton(
              child: Text('Resposta 2'),
              onPressed: () {
                setState(() => perguntaSelecionada = 0);
                print('Resposta 2 foi selecionada.');
              },
            ),
            RaisedButton(
              child: Text('Resposta 3'),
              onPressed: responderPergunta,
            ),
          ],
        ),
      ),
    );
  }
}

class PerguntasApp extends StatefulWidget {
  @override
  PerguntasAppState createState() {
    return PerguntasAppState();
  }
}
