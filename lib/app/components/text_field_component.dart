import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_login/app/constants/colors_constant.dart';

class TextFieldComponent extends StatefulWidget {
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
  State<TextFieldComponent> createState() => _TextFieldComponentState();
}

class _TextFieldComponentState extends State<TextFieldComponent> {
  Color _background = ColorsConstant.redLight;
  final FocusNode _focus = FocusNode();

  @override
  void initState() {
    super.initState();
    _focus.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    _focus.removeListener(_onFocusChange);
    _focus.dispose();
    super.dispose();
  }

  void _onFocusChange() {
    setState(() {
      _background =
          _focus.hasFocus ? const Color(0xFFFFF2F2) : ColorsConstant.redLight;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.labelText != null)
          Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 4.0),
            child: Text(
              widget.labelText ?? '',
              style: const TextStyle(
                color: Color(0xFFA68787),
                fontSize: 14.0,
              ),
            ),
          ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeIn,
          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
          height: 48,
          decoration: BoxDecoration(
            border: Border.all(color: ColorsConstant.redDark),
            borderRadius: const BorderRadius.all(Radius.circular(16.0)),
            color: _background,
          ),
          child: TextField(
            focusNode: _focus,
            obscureText: widget.obscureText,
            keyboardType: widget.keyboardType,
            decoration: InputDecoration(
              icon: widget.icon != null
                  ? Icon(widget.icon, color: const Color(0xFFB97E7E), size: 18)
                  : null,
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
