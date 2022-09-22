import 'package:flutter/material.dart';
import 'package:food_delivery_app/UI%20View/Custom%20Widgets/Back_Arrow.dart';
import 'package:food_delivery_app/UI%20View/Custom%20Widgets/Green_Container.dart';
import 'package:food_delivery_app/UI%20View/Custom%20Widgets/Light_Grey_TextField.dart';
import 'package:food_delivery_app/UI%20View/Utilities/Color_Styles.dart';
import 'package:food_delivery_app/UI%20View/Utilities/Text_Styles.dart';
import 'New_Pin_Screen.dart';

class LocationView extends StatelessWidget {
  const LocationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: GestureDetector(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding:
                  EdgeInsets.only(top: _height * 0.05, left: _width * 0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const BackArrowView(),
                  Text(
                    "Set Your Location",
                    style: TextStyles.headText3,
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                showModalBottomSheet<void>(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                  context: context,
                  builder: (BuildContext context) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: _height * 0.04,
                        ),
                        Text(
                          "Location",
                          style: TextStyles.headText3,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: _width * 0.06,
                              horizontal: _height * 0.06),
                          child: Container(
                            height: _height * 0.001,
                            width: double.infinity,
                            color: ColorStyles.grey,
                          ),
                        ),
                        const LightGreyTextFiels(
                            text: "Time Square NYC, Manhattan",
                            iconData: Icons.add_location),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: _width * 0.06,
                              horizontal: _height * 0.06),
                          child: Container(
                            height: _height * 0.001,
                            width: double.infinity,
                            color: ColorStyles.grey,
                          ),
                        ),
                        SizedBox(
                          height: _height * 0.1,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const NewPinView(),
                                        ),
                                      );
                                    },
                                    child: const GreenContainerView(
                                        text: "Continue")),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Container(
                height: 5,
                width: 40,
                decoration: BoxDecoration(
                    color: ColorStyles.grey,
                    borderRadius: BorderRadius.circular(30)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
