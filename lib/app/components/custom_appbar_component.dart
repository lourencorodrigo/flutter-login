import 'package:flutter/material.dart';

class CustomAppBarComponent extends StatelessWidget {
  const CustomAppBarComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 140,
            ),
          ],
        ),
      ),
    );
  }
}
