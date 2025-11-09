import 'package:flutter/material.dart';
import 'package:flutter_iniciante/mock/generate_pessoas.dart';
import 'package:flutter_iniciante/widgets/pessoa_list.dart';

import 'custom_person_tile.dart';

class ListaPesssoas extends StatelessWidget {
  const ListaPesssoas({super.key});

  @override
  Widget build(BuildContext context) {
    final pessoas = gerarPessoas(20);
    return ListView.builder(
      itemCount: pessoas.length,
      itemBuilder: (context, index) {
        return CustomPersonTile(pessoa: pessoas[index]);
      },
    );
  }
}
