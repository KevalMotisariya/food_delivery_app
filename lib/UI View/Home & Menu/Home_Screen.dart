import 'package:flutter/material.dart';
import '../Custom Widgets/Light_Grey_TextField.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              top: 40,
            ),
            child: Row(
              children: [
                const CircleAvatar(),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Deliver to"),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        const Text(
                          "Time Squre",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          'assets/images/down_arrow.png',
                          height: 20,
                          width: 20,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  width: 90,
                ),
                const Icon(Icons.notification_add_outlined),
                const SizedBox(
                  width: 30,
                ),
                const Icon(Icons.card_giftcard_outlined),
              ],
            ),
          ),
          const LightGreyTextFiels(
            text: 'What are you craving?',
            iconData: Icons.search,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [],
          ),
        ],
      ),
    );
  }
}
