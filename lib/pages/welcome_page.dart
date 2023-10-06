import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/app_large_text.dart';
import '../widgets/app_text.dart';
import '../widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = ["welcome-one.png", "welcome-two.png", "welcome-three.png"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/" + images[index]),
                      fit: BoxFit.cover)),
              child: Container(
                margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: "Trips", color: Colors.white,),
                        AppText(text: "Mountain", color: Colors.white, size: 30,),
                        const SizedBox(height: 15,),
                        Container(
                            width: 250,
                            child: AppText(text: "Mountain hikes give you an incredible sense of freedom along with endurance tests.", color: Colors.white, size: 14,)),
                        const SizedBox(height: 25,),
                        ResponsiveButton(width: 125,),
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
