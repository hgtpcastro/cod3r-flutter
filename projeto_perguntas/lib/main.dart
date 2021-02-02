import 'package:flutter/material.dart';

main() => runApp(PerguntasApp());

class PerguntasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a sua cor favoríta?',
      'Qual é o seu animan favoríto?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Text(perguntas[0]),
            RaisedButton(
              child: Text('Resposta 1'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Resposta 2'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Resposta 3'),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
