import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String texto;
  Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(texto, style: TextStyle(fontSize: 24)),
    );
  }
}
