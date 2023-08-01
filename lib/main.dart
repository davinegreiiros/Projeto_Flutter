// ignore: use_key_in_widget_constructors
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
  void responder() {
    print('Pergunta respondida');
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual e a sua cor favorita?',
      'Qual e a seu animal favorito ?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[0]),
            ElevatedButton(
                onPressed: () => print('Resposta 1!!!'),
                child: Text('Resposta 1')),
            ElevatedButton(
                onPressed: () {
                  print('Resposta 2 foi a selecionada!');
                },
                child: Text('Resposta 2')),
            ElevatedButton(onPressed: responder, child: Text('Resposta 3')),
          ],
        ),
      ),
    );
  }
}
