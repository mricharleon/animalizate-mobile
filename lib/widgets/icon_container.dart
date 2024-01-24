import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconContainer extends StatelessWidget {
  const IconContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 10)]),
      padding: const EdgeInsets.all(20),
      child: Center(
          child: SvgPicture.asset(
        'assets/logotipo.svg',
        width: 80,
        height: 80,
      )),
    );
  }
}
