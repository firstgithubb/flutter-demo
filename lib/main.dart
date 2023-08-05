import 'package:flutter/material.dart';
import 'package:my_app/homepage.dart';
import 'package:my_app/utils/routes.dart';

import 'logpage.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.cyan),
      routes: {
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LogPage(),
      }

    );
  }
}




