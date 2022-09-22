import 'package:flutter/material.dart';
import 'package:food_delivery_app/UI%20View/Custom%20Widgets/Back_Arrow.dart';
import 'package:food_delivery_app/UI%20View/Screens/Account%20Set%20up/Face_Click_Screen.dart';
import 'package:food_delivery_app/UI%20View/Utilities/Color_Styles.dart';
import 'package:food_delivery_app/UI%20View/Utilities/Text_Styles.dart';
import '../../Custom Widgets/Small_Green_Container.dart';
import '../../Custom Widgets/Small_Light_Green_Container.dart';
import '../../Home & Menu/Home_Screen.dart';

class FaceScaneView extends StatefulWidget {
  const FaceScaneView({Key? key}) : super(key: key);

  @override
  State<FaceScaneView> createState() => _FaceScaneViewState();
}

class _FaceScaneViewState extends State<FaceScaneView> {
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorStyles.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: _height * 0.04, left: _width * 0.2),
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
            height: _height * 0.05,
          ),
          Text(
            "Add a face recognition to make your account\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tmore secure.",
            style: TextStyles.descriptionText,
          ),
          Image.asset(
            'assets/images/face.png',
            height: _height * 0.55,
          ),
          Padding(
            padding: EdgeInsets.only(
                left: _width * 0.04, right: _width * 0.04, top: _height * 0.05),
            child: Row(
              children: [
                Expanded(
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeView(),
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
                              builder: (context) => const FaceClickView(),
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
