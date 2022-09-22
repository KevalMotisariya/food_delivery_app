import 'package:flutter/cupertino.dart';
import 'package:food_delivery_app/UI%20View/Utilities/Text_Styles.dart';
import '../Utilities/Color_Styles.dart';

class WhiteContainerView extends StatelessWidget {
  const WhiteContainerView({Key? key, this.iconData, this.text, this.iconColor})
      : super(key: key);

  final IconData? iconData;
  final String? text;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: _width * 0.03, right: _width * 0.03),
      child: Container(
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              iconData!,
              color: iconColor,
              size: 35,
            ),
            SizedBox(
              width: _width * 0.03,
            ),
            Text(
              text!,
              style: TextStyles.descriptionText
                  .copyWith(fontWeight: FontWeight.w600, fontSize: 15),
            ),
          ],
        ),
        height: _height * 0.07,
        width: double.infinity,
        decoration: BoxDecoration(
          color: ColorStyles.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 1, color: ColorStyles.lightgrey),
        ),
      ),
    );
  }
}
