
import 'package:flutter/material.dart';
import 'package:flutter_iniciante/pages/home_page.dart';
import 'package:flutter_iniciante/pages/nova_page.dart';
import 'package:flutter_iniciante/routes/routers.dart';

Map<String, WidgetBuilder> routes = {
  Routers.initialRoute: (BuildContext context) => HomePage(),
  Routers.novaPagina: (BuildContext context) => NovaPage(),
};