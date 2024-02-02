import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String label;
  final TextInputType keyboardType;
  final bool obscureText, borderEnabled;
  final double fontSize;
  const InputText({
    Key? key,
    required this.label,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.borderEnabled = true,
    this.fontSize = 15,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      obscureText: obscureText,
      style: TextStyle(fontSize: fontSize),
      decoration: InputDecoration(
        labelText: label,
        contentPadding: const EdgeInsets.symmetric(vertical: 5),
        enabledBorder: borderEnabled
            ? const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black12))
            : InputBorder.none,
        labelStyle:
            const TextStyle(color: Colors.black45, fontWeight: FontWeight.w500),
      ),
    );
  }
}
