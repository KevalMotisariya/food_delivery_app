import 'package:flutter/material.dart';
import 'package:food_delivery_app/UI%20View/Utilities/Color_Styles.dart';

class LightGreyTextFiels extends StatelessWidget {
  final String text;
  final IconData? iconData;

  const LightGreyTextFiels({Key? key, required this.text, this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Padding(
        padding: EdgeInsets.only(left: _width * 0.03, right: _width * 0.03),
        child: TextFormField(
          textAlign: TextAlign.start,
          decoration: InputDecoration(
            hintText: text,
            filled: true,
            fillColor: ColorStyles.lightgrey,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(20),
            ),
            prefixIcon: Icon(iconData),
          ),
        ));
  }
}
