import 'package:animalizate/widgets/circle.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            Positioned(
                top: -225,
                left: 150,
                child: Circle(
                  size: 400,
                  colors: const [Colors.pinkAccent, Colors.pink],
                )),
            Positioned(
                top: -150,
                left: -50,
                child: Circle(
                  size: 250,
                  colors: const [Colors.orange, Colors.deepOrangeAccent],
                ))
          ],
        ),
      ),
    );
  }
}
