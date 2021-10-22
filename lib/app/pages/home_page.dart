import 'package:flutter/material.dart';
import 'package:flutter_login/app/components/custom_appbar_component.dart';
import 'package:flutter_login/app/pages/test_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.expand_less_outlined,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TestPage()),
          );
        },
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFFDEBEC),
        flexibleSpace: const CustomAppBarComponent(),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/calendar.png',
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 32.0,
                  right: 32.0,
                  top: 32.0,
                ),
                child: Text(
                  'Seja produtivo! Organize sua rotina.',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 40.0,
                    color: Color(0xFF08456A),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
