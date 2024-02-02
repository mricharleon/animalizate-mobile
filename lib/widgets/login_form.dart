import 'package:animalizate/utils/responsive.dart';
import 'package:animalizate/widgets/input_text.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Positioned(
      bottom: 30,
      child: Container(
        constraints: BoxConstraints(maxWidth: responsive.isTablet ? 430 : 360),
        child: Column(
          children: <Widget>[
            InputText(
              keyboardType: TextInputType.emailAddress,
              label: 'Email address',
              fontSize: responsive.dp(1.4),
            ),
            SizedBox(
              height: responsive.dp(2),
            ),
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.black12),
                ),
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: InputText(
                      label: 'Password',
                      obscureText: true,
                      borderEnabled: false,
                      fontSize: responsive.dp(1.4),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(10),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Forgot password',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: responsive.dp(1.5)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: responsive.dp(5),
            ),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    backgroundColor: Colors.pinkAccent),
                onPressed: () {},
                child: Text(
                  'Sign in',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, // Aplica el font weight bold
                      color: Colors.white,
                      fontSize: responsive.dp(1.6)),
                ),
              ),
            ),
            SizedBox(
              height: responsive.dp(2),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "New to Friendly Desi?",
                  style: TextStyle(fontSize: responsive.dp(1.4)),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                        fontWeight:
                            FontWeight.bold, // Aplica el font weight bold
                        color: Colors.pinkAccent,
                        fontSize: responsive.dp(1.6)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: responsive.dp(7),
            ),
          ],
        ),
      ),
    );
  }
}
