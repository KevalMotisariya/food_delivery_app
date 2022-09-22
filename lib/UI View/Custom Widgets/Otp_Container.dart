import 'package:flutter/material.dart';
import 'package:food_delivery_app/UI%20View/Utilities/Color_Styles.dart';

class OtpContainerView extends StatelessWidget {
  const OtpContainerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Container(
      height: _height * 0.07,
      width: _width * 0.19,
      decoration: BoxDecoration(
        color: ColorStyles.lightgrey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(border: InputBorder.none),
      ),
    );
  }
}
