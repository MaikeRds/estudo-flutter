import 'package:flutter/material.dart';
import 'package:flutter_iniciante/models/pessoa.dart';
import 'package:flutter_iniciante/widgets/custom_tile.dart';

class CustomPersonTile extends StatelessWidget {
  final Pessoa pessoa;
  const CustomPersonTile({super.key, required this.pessoa});
  @override
  Widget build(BuildContext context) {
    return CustomTile(
      color: Colors.grey,
      leading: Text("Id: ${pessoa.id}"),
      title: Text(pessoa.nome, style: TextStyle(fontSize: 20),),
      subtitle: Text("Peso: ${pessoa.peso.toStringAsFixed(1)} Kg"),
      trailing: Text("Altura: ${pessoa.altura} cm"),
    );
  }
}
