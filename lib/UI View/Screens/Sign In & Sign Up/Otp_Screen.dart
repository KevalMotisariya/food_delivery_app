import 'package:flutter/material.dart';
import 'package:food_delivery_app/UI%20View/Custom%20Widgets/Green_Container.dart';
import 'package:food_delivery_app/UI%20View/Custom%20Widgets/Otp_Container.dart';
import 'package:food_delivery_app/UI%20View/Screens/Account%20Set%20up/Profile_screen.dart';
import 'package:food_delivery_app/UI%20View/Utilities/Text_Styles.dart';

class OtpView extends StatefulWidget {
  const OtpView({Key? key}) : super(key: key);

  @override
  State<OtpView> createState() => _OtpViewState();
}

class _OtpViewState extends State<OtpView> {
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: _height * 0.06, left: _width * 0.05),
            child: Row(
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.arrow_back)),
                SizedBox(
                  width: _width * 0.04,
                ),
                Text(
                  "OTP Code Verification",
                  style: TextStyles.headText3,
                ),
              ],
            ),
          ),
          SizedBox(
            height: _height * 0.15,
          ),
          Text(
            "Code has been sent to +91 111*****99",
            style: TextStyles.fillText.copyWith(fontSize: 16),
          ),
          SizedBox(
            height: _height * 0.1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const OtpContainerView(),
              SizedBox(
                width: _width * 0.02,
              ),
              const OtpContainerView(),
              SizedBox(
                width: _width * 0.02,
              ),
              const OtpContainerView(),
              SizedBox(
                width: _width * 0.02,
              ),
              const OtpContainerView(),
            ],
          ),
          SizedBox(
            height: _height * 0.1,
          ),
          const Text("Resend code in 55 s"),
          SizedBox(
            height: _height * 0.1,
          ),
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfileView(),
                  ),
                );
              },
              child: GreenContainerView(text: "Verify")),
        ],
      ),
    );
  }
}
