import 'package:flutter/material.dart';
import 'package:food_delivery_app/UI%20View/Custom%20Widgets/Back_Arrow.dart';
import 'package:food_delivery_app/UI%20View/Custom%20Widgets/Check_Box.dart';
import 'package:food_delivery_app/UI%20View/Custom%20Widgets/Divider_Container.dart';
import 'package:food_delivery_app/UI%20View/Custom%20Widgets/Green_Container.dart';
import 'package:food_delivery_app/UI%20View/Custom%20Widgets/Light_Grey_TextField.dart';
import 'package:food_delivery_app/UI%20View/Custom%20Widgets/Login_Container.dart';
import 'package:food_delivery_app/UI%20View/Screens/Sign%20In%20&%20Sign%20Up/Otp_Screen.dart';
import 'package:food_delivery_app/UI%20View/Utilities/Color_Styles.dart';
import 'package:food_delivery_app/UI%20View/Utilities/Text_Styles.dart';

class SignInPhoneView extends StatelessWidget {
  const SignInPhoneView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorStyles.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
          ),
          Padding(
            padding: EdgeInsets.only(top: _height * 0.05, left: _width * 0.02),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                BackArrowView(),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                height: _height * 0.2,
              ),
            ],
          ),
          Text(
            "Login to Your Account",
            style: TextStyles.headText2,
          ),
          SizedBox(
            height: _height * 0.04,
          ),
          const LightGreyTextFiels(
              text: "+91 000 000 0000", iconData: Icons.expand_less),
          SizedBox(
            height: _height * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CheckBoxView(),
            ],
          ),
          SizedBox(
            height: _height * 0.01,
          ),
          InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OtpView(),
                  ),
                );
              },
              child: const GreenContainerView(text: "Sign In")),
          SizedBox(
            height: _height * 0.04,
          ),
          const DividerView(),
          SizedBox(
            height: _height * 0.04,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const LoginContainerView(assetName: 'assets/images/facebook.svg'),
              SizedBox(
                width: _width * 0.03,
              ),
              const LoginContainerView(assetName: 'assets/images/google.svg'),
              SizedBox(
                width: _width * 0.03,
              ),
              const LoginContainerView(assetName: 'assets/images/apple.svg'),
            ],
          ),
          SizedBox(
            height: _height * 0.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account?",
                style: TextStyles.descriptionText
                    .copyWith(color: ColorStyles.grey, fontSize: 15),
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Sign In",
                  style: TextStyles.descriptionText
                      .copyWith(color: ColorStyles.green, fontSize: 15),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
