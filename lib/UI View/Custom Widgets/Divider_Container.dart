import 'package:flutter/material.dart';
import 'package:food_delivery_app/UI%20View/Utilities/Color_Styles.dart';
import 'package:food_delivery_app/UI%20View/Utilities/Text_Styles.dart';

class DividerView extends StatelessWidget {
  const DividerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;

    return Row(
      children: [
        Expanded(
          child: Container(
            height: _height * 0.002,
            color: ColorStyles.lightgrey,
          ),
        ),
        SizedBox(
          width: _width * 0.02,
        ),
        Text(
          "Or Continue With",
          style: TextStyles.descriptionText
              .copyWith(fontWeight: FontWeight.w500, fontSize: 15),
        ),
        SizedBox(
          width: _width * 0.02,
        ),
        Expanded(
          child: Container(
            height: _height * 0.002,
            color: ColorStyles.lightgrey,
          ),
        ),
      ],
    );
  }
}
