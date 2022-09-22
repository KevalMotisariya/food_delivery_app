import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/UI%20View/Custom%20Widgets/Small_Green_Container.dart';
import 'package:food_delivery_app/UI%20View/Custom%20Widgets/Small_Light_Green_Container.dart';
import 'package:food_delivery_app/UI%20View/Screens/Account%20Set%20up/Face_Scane_Screen.dart';
import '../../Custom Widgets/Back_Arrow.dart';
import '../../Utilities/Text_Styles.dart';

class FingerPrintView extends StatefulWidget {
  const FingerPrintView({Key? key}) : super(key: key);

  @override
  State<FingerPrintView> createState() => _FingerPrintViewState();
}

class _FingerPrintViewState extends State<FingerPrintView> {
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: _height * 0.05, left: _width * 0.02),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const BackArrowView(),
                Text(
                  "Set Your Fingerprint",
                  style: TextStyles.headText3,
                ),
              ],
            ),
          ),
          SizedBox(
            height: _height * 0.1,
          ),
          Text(
            "Add a fingerprint to make your account\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tmore secure.",
            style: TextStyles.descriptionText,
          ),
          SizedBox(
            height: _height * 0.1,
          ),
          SvgPicture.asset(
            'assets/images/finger_print.svg',
            height: _height * 0.2,
          ),
          SizedBox(
            height: _height * 0.1,
          ),
          Text(
            "Please Put your finger on the fingerprint\n\t\t\t\t\t\t\t\t\t\t\tscanner to get started.",
            style: TextStyles.descriptionText,
          ),
          SizedBox(
            height: _height * 0.1,
          ),
          Padding(
            padding: EdgeInsets.only(left: _width * 0.04, right: _width * 0.04),
            child: Row(
              children: [
                Expanded(
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const FaceScaneView(),
                            ),
                          );
                        },
                        child: const SmallLightGreenContainer(text: "Skip"))),
                SizedBox(
                  width: _width * 0.04,
                ),
                Expanded(
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const FaceScaneView(),
                            ),
                          );
                        },
                        child:
                            const SmallGreenContainerView(text: "Continue"))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
