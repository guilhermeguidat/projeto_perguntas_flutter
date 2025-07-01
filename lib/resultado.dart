import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() QuandoReiniciarQuestionario;

  Resultado(this.pontuacao, this.QuandoReiniciarQuestionario);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Você completou o questionário!',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Pontuação: $pontuacao',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ],
          ),
        ),
        ElevatedButton(
          onPressed: QuandoReiniciarQuestionario,
          child: Text('Reiniciar Questionário'),
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue,
          ),
        ),
      ],
    );
  }
}
