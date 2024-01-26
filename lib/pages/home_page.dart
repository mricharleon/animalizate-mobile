import 'package:animalizate/widgets/circle.dart';
import 'package:animalizate/widgets/icon_container.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double pinkSize = size.width * .75;
    final double orangeSize = size.width * .6;

    return Scaffold(
      body: Container(
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
              child: const IconContainer(
                size: 75,
              ),
            )
          ],
        ),
      ),
    );
  }
}
