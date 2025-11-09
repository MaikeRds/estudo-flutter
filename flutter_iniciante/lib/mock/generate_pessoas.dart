import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter_iniciante/models/pessoa.dart';

List<Pessoa> gerarPessoas(int quantidade) {
  final faker = Faker();
  return List.generate(quantidade, (index) {
    return Pessoa(id: index,
        nome: faker.person.name(),
        altura: Random().nextInt(200),
        peso: faker.randomGenerator.decimal(min: 50, scale:100));
  });
}