import 'package:flutter/material.dart';
import 'package:flutter_iniciante/extensios/extensions.dart';
import 'package:flutter_iniciante/models/pessoa.dart';
import 'package:flutter_iniciante/widgets/custom_tile.dart';
import 'package:flutter_iniciante/widgets/pessoa_dialog.dart';

class CustomPersonTile extends StatelessWidget {
  final Pessoa pessoa;

  const CustomPersonTile({super.key, required this.pessoa});

  @override
  Widget build(BuildContext context) {
    return CustomTile(
      color: Colors.grey,
      leading: Text("Id: ${pessoa.id}"),
      title: Text(pessoa.nome, style: TextStyle(fontSize: 20)),
      subtitle: Text("Peso: ${pessoa.peso.paraPeso()}"),
      trailing: Text("Altura: ${pessoa.altura.paraAltura()}"),
      onTap: () {
        showDialog(
            barrierDismissible: false,
            context: context,
            builder: (context) {
          return PessoaDialog(pessoa: pessoa);
        });
      },
    );
  }
}


