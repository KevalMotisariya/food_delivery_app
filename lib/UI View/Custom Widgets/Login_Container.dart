import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/UI%20View/Utilities/Color_Styles.dart';

class LoginContainerView extends StatelessWidget {
  final String assetName;
  const LoginContainerView({Key? key, required this.assetName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: _height * 0.03, vertical: _width * 0.03),
      child: SvgPicture.asset(
        assetName,
      ),
      height: _height * 0.06,
      width: _width * 0.18,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: ColorStyles.lightgrey),
          borderRadius: BorderRadius.circular(20),
          color: ColorStyles.white),
    );
  }
}
