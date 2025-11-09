import 'package:flutter/material.dart';
import 'package:flutter_iniciante/extensios/extensions.dart';

class NovaPage extends StatelessWidget {
  const NovaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Nova Pagina")),
      body: Center(
        child: ElevatedButton(onPressed: () {
          context.pop();
        }, child: Text("Voltar")),
      ),
    );
  }
}
