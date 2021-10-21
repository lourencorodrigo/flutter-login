import 'package:flutter/material.dart';

import 'app/pages/home_page.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Segoe'),
      home: const Center(
        child: HomePage(),
      ),
    );
  }
}
