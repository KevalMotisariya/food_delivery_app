import 'package:flutter/material.dart';
import 'package:food_delivery_app/UI%20View/Custom%20Widgets/Green_Container.dart';
import 'package:food_delivery_app/UI%20View/Screens/Sign%20In%20&%20Sign%20Up/Page%20View/Page_View_1.dart';
import 'package:food_delivery_app/UI%20View/Screens/Sign%20In%20&%20Sign%20Up/Page%20View/Page_View_2.dart';
import 'package:food_delivery_app/UI%20View/Screens/Sign%20In%20&%20Sign%20Up/Page%20View/Page_View_3.dart';
import 'package:food_delivery_app/UI%20View/Screens/Sign%20In%20&%20Sign%20Up/Sign_In_Screen.dart';
import 'package:food_delivery_app/UI%20View/Utilities/Color_Styles.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroView extends StatefulWidget {
  @override
  State<IntroView> createState() => _IntroViewState();
}

class _IntroViewState extends State<IntroView> {
  final List<Widget> _list = [
    const PageView1(),
    const PageView2(),
    const PageView3(),
  ];
  int index = 0;

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: const Color(0xffffffff),
        body: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _controller,
                onPageChanged: (value) {
                  setState(() {
                    index = value;
                  });
                },
                children: _list,
              ),
            ),
            SizedBox(
              height: _height * 0.03,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: ColorStyles.green,
                dotColor: ColorStyles.green,
                dotHeight: 10,
                dotWidth: 10,
              ),
            ),
            SizedBox(height: _height / 32),
            InkWell(
              onTap: () {
                if (_controller.page!.round() < _list.length - 1) {
                  _controller.animateToPage(
                    _controller.page!.round() + 1,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn,
                  );
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignInView(),
                    ),
                  );
                }
              },
              child: GreenContainerView(
                text: (index == 2) ? "Get Started" : "Next",
              ),
            ),
            SizedBox(height: _height / 32),
          ],
        ));
  }
}
