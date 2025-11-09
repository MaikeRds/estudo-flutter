import 'package:flutter/material.dart';
import 'package:flutter_iniciante/extensios/extensions.dart';
import 'package:flutter_iniciante/pages/nova_page.dart';
import 'package:flutter_iniciante/routes/routers.dart';

import '../widgets/listview_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Meu Primeiro projeto")),
      body: ListaPesssoas(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.greenAccent,
        child: Icon(Icons.navigate_next),
        onPressed: () {
          context.pushNamed(Routers.novaPagina);

          // Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) {
          //   return NovaPage();
          // }), (route) => false);
        },
      ),
    );
  }
}
