import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String label;
  final TextInputType keyboardType;
  final bool obscureText;
  const InputText({
    Key? key,
    required this.label,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: label,
        labelStyle:
            const TextStyle(color: Colors.black45, fontWeight: FontWeight.w500),
      ),
    );
  }
}
