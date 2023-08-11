// ignore: use_key_in_widget_constructors
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void responder() {
    perguntaSelecionada++;
    print('perguntaSelecionada');
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual e a sua cor favorita ?',
      'Qual e a seu animal favorito ?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[perguntaSelecionada]),
            ElevatedButton(
              onPressed: responder,
              child: Text('Resposta 1'),
            ),
            ElevatedButton(onPressed: responder, child: Text('Resposta 3')),
            ElevatedButton(onPressed: responder, child: Text('Resposta 3')),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
