import 'package:flutter/material.dart';
import 'package:food_delivery_app/UI%20View/Custom%20Widgets/Back_Arrow.dart';
import 'package:food_delivery_app/UI%20View/Custom%20Widgets/Divider_Container.dart';
import 'package:food_delivery_app/UI%20View/Custom%20Widgets/Green_Container.dart';
import 'package:food_delivery_app/UI%20View/Custom%20Widgets/Light_Grey_TextField.dart';
import 'package:food_delivery_app/UI%20View/Custom%20Widgets/Login_Container.dart';
import 'package:food_delivery_app/UI%20View/Custom%20Widgets/Check_Box.dart';
import 'package:food_delivery_app/UI%20View/Utilities/Color_Styles.dart';
import 'package:food_delivery_app/UI%20View/Utilities/Text_Styles.dart';

class SignUpView extends StatefulWidget {
  SignUpView({
    Key? key,
  }) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
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
            padding: EdgeInsets.only(top: _height * 0.05, left: _width * 0.02),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                BackArrowView(),
              ],
            ),
          ),
          Expanded(
            child: Image.asset(
              'assets/images/logo.png',
            ),
          ),
          Text(
            "Creat New Account",
            style: TextStyles.headText2,
          ),
          SizedBox(
            height: _height * 0.05,
          ),
          const LightGreyTextFiels(
              text: "+91 000 000 0000", iconData: Icons.expand_less),
          SizedBox(
            height: _height * 0.02,
          ),
          const LightGreyTextFiels(
              text: "kevalmotisariya225@gmail.com", iconData: Icons.mail),
          SizedBox(
            height: _height * 0.02,
          ),
          const LightGreyTextFiels(
              text: "Keval Motisariya", iconData: Icons.person),
          Padding(
            padding: EdgeInsets.only(top: _height * 0.02, left: _width * 0.3),
            child: const CheckBoxView(),
          ),
          SizedBox(
            height: _height * 0.02,
          ),
          const GreenContainerView(text: "Sign Up"),
          SizedBox(
            height: _height * 0.01,
          ),
          const DividerView(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const LoginContainerView(assetName: 'assets/images/facebook.svg'),
              SizedBox(
                width: _width * 0.02,
              ),
              const LoginContainerView(assetName: 'assets/images/google.svg'),
              SizedBox(
                width: _width * 0.02,
              ),
              const LoginContainerView(assetName: 'assets/images/apple.svg'),
            ],
          ),
          SizedBox(
            height: _height * 0.02,
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
          SizedBox(
            height: _height * 0.01,
          ),
        ],
      ),
    );
  }
}
