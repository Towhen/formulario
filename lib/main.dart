import 'package:flutter/material.dart';
import 'package:flutter_app_cuestonario/pages/list_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: listPage.ROUTE,
      routes: {
        listPage.ROUTE: (_) => listPage(),
        SavePage.ROUTE: (_) => listPage(),
      },
    );
  }
}
