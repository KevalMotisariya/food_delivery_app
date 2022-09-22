import 'package:flutter/material.dart';

import '../Utilities/Color_Styles.dart';

class SmallLightGreenContainer extends StatelessWidget {
  final String text;
  const SmallLightGreenContainer({Key? key, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Container(
      alignment: Alignment.center,
      height: _height * 0.06,
      width: _width * 0.2,
      child: Text(
        text,
        style: TextStyle(
            color: ColorStyles.green,
            fontSize: 15,
            fontWeight: FontWeight.w600),
      ),
      decoration: BoxDecoration(
        color: ColorStyles.lightgreen,
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }
}
