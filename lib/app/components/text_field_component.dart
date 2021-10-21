import 'package:flutter/material.dart';

class TextFieldComponent extends StatelessWidget {
  final IconData? icon;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String? labelText;

  const TextFieldComponent({
    Key? key,
    this.icon,
    this.keyboardType,
    this.obscureText = false,
    this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (labelText != null)
          Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 4.0),
            child: Text(
              labelText ?? '',
              style: TextStyle(
                color: Colors.red[400],
                fontSize: 14.0,
              ),
            ),
          ),
        Container(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
          height: 48,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red.shade200),
            borderRadius: const BorderRadius.all(Radius.circular(16.0)),
            color: Colors.red[50],
          ),
          child: TextField(
            obscureText: obscureText,
            keyboardType: keyboardType,
            decoration: InputDecoration(
              icon: icon != null
                  ? Icon(icon, color: Colors.red[200], size: 18)
                  : null,
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
