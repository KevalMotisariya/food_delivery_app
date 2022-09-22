import 'package:flutter/material.dart';
import 'package:food_delivery_app/UI%20View/Custom%20Widgets/Back_Arrow.dart';
import 'package:food_delivery_app/UI%20View/Custom%20Widgets/Green_Container.dart';
import 'package:food_delivery_app/UI%20View/Custom%20Widgets/Light_Grey_TextField.dart';
import 'package:food_delivery_app/UI%20View/Screens/Account%20Set%20up/Location_Screen.dart';
import 'package:food_delivery_app/UI%20View/Utilities/Color_Styles.dart';
import 'package:food_delivery_app/UI%20View/Utilities/Text_Styles.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
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
                    "Fill Your Profile",
                    style: TextStyles.headText3,
                  )
                ],
              ),
            ),
            SizedBox(
              height: _height * 0.02,
            ),
            Stack(
              children: [
                CircleAvatar(
                  backgroundColor: ColorStyles.grey,
                  maxRadius: 60,
                  child: Icon(
                    Icons.person,
                    color: ColorStyles.lightgreen,
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 90,
                  child: SizedBox(
                    height: 30,
                    width: 30,
                    child: FloatingActionButton(
                      onPressed: () {},
                      child: const Icon(
                        Icons.edit,
                        size: 18,
                      ),
                      backgroundColor: ColorStyles.green,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: _height * 0.02,
            ),
            const LightGreyTextFiels(
              text: "Full Name",
            ),
            SizedBox(
              height: _height * 0.02,
            ),
            const LightGreyTextFiels(
              text: "Nick Name",
            ),
            SizedBox(
              height: _height * 0.02,
            ),
            const LightGreyTextFiels(
              iconData: Icons.calendar_month,
              text: "Date of Birth",
            ),
            SizedBox(
              height: _height * 0.02,
            ),
            const LightGreyTextFiels(
              iconData: Icons.mail,
              text: "Email",
            ),
            SizedBox(
              height: _height * 0.02,
            ),
            const LightGreyTextFiels(
              iconData: Icons.expand_less,
              text: "+91 000 000 0000",
            ),
            SizedBox(
              height: _height * 0.02,
            ),
            const LightGreyTextFiels(
              text: "Gender",
            ),
            SizedBox(
              height: _height * 0.04,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LocationView(),
                    ),
                  );
                },
                child: const GreenContainerView(text: "Continue")),
          ],
        ),
      ),
    );
  }
}
