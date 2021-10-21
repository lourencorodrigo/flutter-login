import 'package:flutter/material.dart';
import 'package:flutter_login/app/components/text_field_component.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            TextFieldComponent(
              labelText: 'E-mail',
              icon: Icons.mail_outline,
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 8,
            ),
            TextFieldComponent(
              labelText: 'Password',
              icon: Icons.lock_outline,
              obscureText: true,
            ),
          ],
        ),
      ),
    );
  }
}
