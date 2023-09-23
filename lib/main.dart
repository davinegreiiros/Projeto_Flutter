// ignore: use_key_in_widget_constructors
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questionario.dart';
import './questao.dart';
import './resposta.dart';
import 'resultado.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  final _perguntas = const [
    {
      'texto': 'Qual e a sua cor favorita ?',
      'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco'],
    },
    {
      'texto': 'Qual e a seu animal favorito ?',
      'respostas': ['Cachorro', 'Gato', 'Leao', 'Tigre'],
    },
    {
      'texto': 'Qual é seu instrutor favorito?',
      'respostas': ['Davi', 'Pedro', 'Leo', 'Joao'],
    }
  ];

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quandoResponder: _responder)
            : Resultado(),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
