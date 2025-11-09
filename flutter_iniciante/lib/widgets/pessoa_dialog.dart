import 'package:flutter/material.dart';
import 'package:flutter_iniciante/extensios/extensions.dart';
import 'package:flutter_iniciante/models/pessoa.dart';

import 'default_dialog_container.dart';

class PessoaDialog extends StatelessWidget {
  final Pessoa pessoa;

  const PessoaDialog({super.key, required this.pessoa});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actions: [
        Row(mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Fechar", style: TextStyle(
                  color: Colors.white
              ),),
            ),
          ],
        ),
      ],
      content: IntrinsicHeight(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Informações da pessoa"),
            SizedBox(height: 8),
            DefaultDialogContainer(child: Text("Id: ${pessoa.id}")),
            DefaultDialogContainer(child: Text("Nome: ${pessoa.nome}")),
            DefaultDialogContainer(
              child: Text("Peso: ${pessoa.peso.paraPeso()}"),
            ),
            DefaultDialogContainer(
              child: Text("Altura: ${pessoa.altura.paraAltura()}"),
            ),
          ],
        ),
      ),
    );
  }
}
