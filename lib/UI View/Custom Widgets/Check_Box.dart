import 'package:flutter/material.dart';
import 'package:food_delivery_app/UI%20View/Utilities/Color_Styles.dart';

import '../Utilities/Text_Styles.dart';

class CheckBoxView extends StatefulWidget {
  const CheckBoxView({Key? key}) : super(key: key);

  @override
  State<CheckBoxView> createState() => _CheckBoxViewState();
}

class _CheckBoxViewState extends State<CheckBoxView> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            activeColor: ColorStyles.green,
            value: isChecked,
            onChanged: (value) {
              setState(() => isChecked = value!);
            }),
        Text(
          "Remember me",
          style: TextStyles.descriptionText,
        ),
      ],
    );
  }
}
