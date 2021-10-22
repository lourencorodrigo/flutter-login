import 'package:flutter/material.dart';
import 'package:flutter_login/app/components/custom_appbar_component.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Color(0xFFBE5A5A)),
        elevation: 0,
        backgroundColor: const Color(0xFFFDEBEC),
        flexibleSpace: const CustomAppBarComponent(),
      ),
      body: Text('tela 2'),
    );
  }
}
