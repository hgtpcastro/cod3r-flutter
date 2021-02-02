import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final String texto;

  Resultado(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Center(
        child: Text(
          this.texto,
          style: TextStyle(
            fontSize: 28,
          ),
        ),
      ),
    );
  }
}
