import 'package:animalizate/utils/responsive.dart';
import 'package:animalizate/widgets/circle.dart';
import 'package:animalizate/widgets/icon_container.dart';
import 'package:animalizate/widgets/login_form.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive(context);

    final double pinkSize = responsive.wp(75);
    final double orangeSize = responsive.wp(60);

    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                  top: -pinkSize * .35,
                  left: pinkSize * .45,
                  child: Circle(
                    size: pinkSize,
                    colors: const [Colors.pinkAccent, Colors.pink],
                  )),
              Positioned(
                  top: -orangeSize * .55,
                  left: -orangeSize * .15,
                  child: Circle(
                    size: orangeSize,
                    colors: const [Colors.orange, Colors.deepOrangeAccent],
                  )),
              Positioned(
                top: pinkSize * .4,
                child: Column(
                  children: <Widget>[
                    const IconContainer(
                      size: 75,
                    ),
                    SizedBox(
                      height: responsive.dp(3),
                    ),
                    Text(
                      'Hello again\nWelcome back!',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: responsive.dp(1.8)),
                    )
                  ],
                ),
              ),
              const LoginForm()
            ],
          ),
        ),
      ),
    );
  }
}
