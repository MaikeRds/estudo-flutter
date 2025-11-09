import 'package:flutter/material.dart';
import 'package:flutter_iniciante/extensios/extensions.dart';
import 'package:flutter_iniciante/models/pessoa.dart';

class PessoaDialog extends StatelessWidget {
  final Pessoa pessoa;
  const PessoaDialog({
    super.key,
    required this.pessoa,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(content: IntrinsicHeight(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Nome: ${pessoa.nome}"),
          Text("Peso: ${pessoa.peso.paraPeso()}"),
          Text("Altura: ${pessoa.altura.paraAltura()}")
      ],),
    ));
  }
}