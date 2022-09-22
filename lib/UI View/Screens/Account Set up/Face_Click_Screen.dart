import 'package:flutter/material.dart';
import '../../Custom Widgets/Back_Arrow.dart';
import '../../Custom Widgets/Small_Green_Container.dart';
import '../../Custom Widgets/Small_Light_Green_Container.dart';
import '../../Home & Menu/Home_Screen.dart';
import '../../Utilities/Color_Styles.dart';
import '../../Utilities/Text_Styles.dart';

class FaceClickView extends StatefulWidget {
  const FaceClickView({Key? key}) : super(key: key);

  @override
  State<FaceClickView> createState() => _FaceClickViewState();
}

class _FaceClickViewState extends State<FaceClickView> {
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
                  "Face Recognition",
                  style: TextStyles.headText3,
                ),
              ],
            ),
          ),
          SizedBox(
            height: _height * 0.1,
          ),
          Text(
            "Add a face recognition to make your account\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tmore secure.",
            style: TextStyles.descriptionText,
          ),
          Padding(
            padding: EdgeInsets.only(
                left: _width * 0.04, right: _width * 0.04, top: _height * 0.55),
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
                  width: _width * 0.03,
                ),
                Expanded(
                    child: InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            // barrierColor: Colors.transparent,
                            builder: (context) => Dialog(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.asset(
                                    'assets/images/person.png',
                                    height: _height * 0.2,
                                  ),
                                  SizedBox(
                                    height: _height * 0.05,
                                  ),
                                  Text(
                                    "Congratulations!",
                                    style: TextStyles.headText3
                                        .copyWith(color: ColorStyles.green),
                                  ),
                                  SizedBox(
                                    height: _height * 0.01,
                                  ),
                                  Text(
                                    "Your account is ready.You will be \nredirected to the Home Page in a\n few seconds.",
                                    style: TextStyles.descriptionText
                                        .copyWith(fontSize: 15),
                                  ),
                                  SizedBox(
                                    height: _height * 0.04,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const HomeView(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      "Tap to Continue",
                                      style: TextStyle(
                                          color: ColorStyles.blue,
                                          fontSize: 13),
                                    ),
                                  ),
                                  SizedBox(
                                    height: _height * 0.05,
                                  ),
                                ],
                              ),
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
