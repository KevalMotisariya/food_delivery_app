import 'package:flutter/material.dart';
import 'package:food_delivery_app/UI%20View/Custom%20Widgets/Back_Arrow.dart';
import 'package:food_delivery_app/UI%20View/Custom%20Widgets/Green_Container.dart';
import 'package:food_delivery_app/UI%20View/Custom%20Widgets/Otp_Container.dart';
import 'package:food_delivery_app/UI%20View/Screens/Account%20Set%20up/Finger_Print_Screen.dart';
import 'package:food_delivery_app/UI%20View/Utilities/Text_Styles.dart';

class NewPinView extends StatefulWidget {
  const NewPinView({Key? key}) : super(key: key);

  @override
  State<NewPinView> createState() => _NewPinViewState();
}

class _NewPinViewState extends State<NewPinView> {
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
                  "Creat New PIN",
                  style: TextStyles.headText3,
                ),
              ],
            ),
          ),
          SizedBox(
            height: _height * 0.15,
          ),
          Text(
            "Add a PIN number to make your account \n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tmore secure.",
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
            height: _height * 0.2,
          ),
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FingerPrintView(),
                  ),
                );
              },
              child: GreenContainerView(text: "Verify")),
        ],
      ),
    );
  }
}
