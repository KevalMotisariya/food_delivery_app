import 'dart:async';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/UI%20View/Screens/Sign%20In%20&%20Sign%20Up/Welcome_Screen.dart';
import 'package:food_delivery_app/UI%20View/Utilities/Color_Styles.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => WelcomeView())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyles.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
          ),
          const Spacer(),
          Image.asset(
            'assets/images/logo.png',
            height: 80,
          ),
          const Text(
            "Foodu",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          const CircularProgressIndicator(),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
