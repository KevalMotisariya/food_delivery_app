import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../Custom Widgets/Back_Arrow.dart';
import '../../Custom Widgets/Divider_Container.dart';
import '../../Custom Widgets/Green_Container.dart';
import '../../Custom Widgets/White_Container.dart';
import '../../Utilities/Color_Styles.dart';
import '../../Utilities/Text_Styles.dart';
import 'Sign_In_Phone_Screen.dart';
import 'Sign_Up_Screen.dart';

class SignInView extends StatefulWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
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
            padding: EdgeInsets.only(left: _width * 0.02, top: _height * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                BackArrowView(),
              ],
            ),
          ),
          Expanded(
            child: SvgPicture.asset(
              'assets/images/Sign_In.svg',
              height: _height * 0.2,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: _width * 0.05),
            child: Text(
              "Let's you in",
              style: TextStyles.headText1.copyWith(
                color: ColorStyles.black,
              ),
            ),
          ),
          SizedBox(
            height: _height * 0.02,
          ),
          WhiteContainerView(
            iconData: Icons.facebook,
            iconColor: ColorStyles.blue,
            text: "Continue with Facebook",
          ),
          SizedBox(
            height: _height * 0.02,
          ),
          WhiteContainerView(
            iconData: Icons.apple,
            iconColor: ColorStyles.blue,
            text: "Continue with Google",
          ),
          SizedBox(
            height: _height * 0.02,
          ),
          WhiteContainerView(
            iconData: Icons.apple,
            iconColor: ColorStyles.black,
            text: "Continue with Apple",
          ),
          SizedBox(
            height: _height * 0.04,
          ),
          const DividerView(),
          SizedBox(
            height: _height * 0.04,
          ),
          InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignInPhoneView(),
                  ),
                );
              },
              child:
                  const GreenContainerView(text: "Sign in with Phone Number")),
          SizedBox(height: _height * 0.03),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have account?",
                style: TextStyles.descriptionText
                    .copyWith(color: ColorStyles.grey, fontSize: 15),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpView(),
                    ),
                  );
                },
                child: Text(
                  "Sign Up",
                  style: TextStyles.descriptionText
                      .copyWith(color: ColorStyles.green, fontSize: 15),
                ),
              ),
            ],
          ),
          SizedBox(
            height: _height * 0.02,
          )
        ],
      ),
    );
  }
}
