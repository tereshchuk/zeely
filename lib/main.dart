import 'package:flutter/material.dart';

import 'screens/test_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: 'GothamPro',
      ),
      home: TestPage(title: 'Zeely'),
    );
  }
}
