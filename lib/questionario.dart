import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/resposta.dart';

class Questionario extends StatelessWidget {
  final int perguntaSelecionada;
  final List<Map<String, Object>> perguntas;
  final void Function(int) responder;

  Questionario({
    required this.perguntaSelecionada,
    required this.perguntas,
    required this.responder,
  });

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSelecionada
        ? (perguntas[perguntaSelecionada]['respostas']
              as List<Map<String, Object>>)
        : [];

    return Center(
      child: Column(
        children: <Widget>[
          Questao(perguntas[perguntaSelecionada]['texto'] as String),
          ...respostas
              .map(
                (resp) => Resposta(
                  resp['texto'] as String,
                  () => responder(resp['pontuacao'] as int),
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
