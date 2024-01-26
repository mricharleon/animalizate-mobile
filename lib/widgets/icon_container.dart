import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconContainer extends StatelessWidget {
  final double size;
  const IconContainer({Key? key, required this.size})
      : assert(size > 0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    double paddingValue = size * 0.15;
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(size * .15),
          boxShadow: const [
            BoxShadow(
                color: Colors.black12, blurRadius: 20, offset: Offset(0, 15))
          ]),
      padding: EdgeInsets.all(paddingValue),
      child: Center(
          child: SvgPicture.asset(
        'assets/logotipo.svg',
        width: size * .6,
        height: size * .6,
      )),
    );
  }
}
