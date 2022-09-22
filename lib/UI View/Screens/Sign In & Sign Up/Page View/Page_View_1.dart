import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../Utilities/Text_Styles.dart';

class PageView1 extends StatelessWidget {
  const PageView1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const Spacer(),
        SvgPicture.asset('assets/images/plate.svg'),
        const Spacer(),
        Text(
          "Order For Food",
          style: TextStyles.headText1,
        ),
        SizedBox(
          height: _height / 32,
        ),
        Padding(
          padding: EdgeInsets.only(left: _width / 8, right: _width / 9),
          child: Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem \nIpsum has been the industry's standard",
            style: TextStyles.descriptionText,
          ),
        ),
      ],
    );
  }
}
