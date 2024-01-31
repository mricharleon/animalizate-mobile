import 'package:animalizate/widgets/input_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return const Positioned(
      bottom: 30,
      left: 20,
      right: 20,
      child: Column(
        children: <Widget>[
          InputText(
            keyboardType: TextInputType.emailAddress,
            label: 'Email address',
          ),
          InputText(
            label: 'Password',
            obscureText: true,
          ),
        ],
      ),
    );
  }
}
