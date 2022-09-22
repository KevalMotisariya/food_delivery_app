import 'package:flutter/material.dart';
import 'package:food_delivery_app/UI%20View/Utilities/Color_Styles.dart';

class GreenContainerView extends StatelessWidget {
  final String text;
  const GreenContainerView({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: _width * 0.03, right: _width * 0.03),
      child: Container(
        alignment: Alignment.center,
        height: _height * 0.063,
        width: double.infinity,
        child: Text(
          text,
          style: TextStyle(
              color: ColorStyles.white,
              fontSize: 15,
              fontWeight: FontWeight.w600),
        ),
        decoration: BoxDecoration(
          color: ColorStyles.green,
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
