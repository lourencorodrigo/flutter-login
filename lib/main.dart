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
      theme: ThemeData(
        fontFamily: 'Segoe',
        scaffoldBackgroundColor: const Color(0xFFFDEBEC),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color(0xFFE67C7C),
        ),
      ),
      home: const Center(
        child: HomePage(),
      ),
    );
  }
}
