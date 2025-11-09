import 'package:flutter/material.dart';
import 'package:flutter_iniciante/pages/home_page.dart';
import 'package:flutter_iniciante/routes/router.dart';
import 'package:flutter_iniciante/routes/routers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routers.initialRoute,
      routes: routes,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.black),
          titleMedium: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
