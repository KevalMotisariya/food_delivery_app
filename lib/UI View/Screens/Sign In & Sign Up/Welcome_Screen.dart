import 'package:flutter/material.dart';
import 'package:food_delivery_app/UI%20View/Screens/Sign%20In%20&%20Sign%20Up/Intro_Screen.dart';
import 'package:food_delivery_app/UI%20View/Utilities/Text_Styles.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          InkWell(
            child: Image.asset(
              'assets/images/pizza.jpg',
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => IntroView(),
                ),
              );
            },
          ),
          Padding(
            padding: EdgeInsets.only(
                bottom: _height / 35, left: _width / 10, right: _width / 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Welcome To\n  Foodu 👋",
                  style: TextStyles.headText1,
                ),
                SizedBox(
                  height: _height / 100,
                ),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem\n Ipsum has been the industry's standard ",
                  style:
                      TextStyles.descriptionText.copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
