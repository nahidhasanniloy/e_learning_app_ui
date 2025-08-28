import 'package:e_learning_app/utils/colors.dart';
import 'package:e_learning_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../NavBarView/nav_bar_view.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      // backgroundColor: Color(0xff7859f7),
      body: Container(
        decoration: BoxDecoration(color: AppColors.primaryColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
            Image.asset("assets/images/onbordingimage.png"),
            Container(
              width: size.width * .90,
              height: size.height * .35,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Discover Your next skills\nlearn anything you want !",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black.withValues(alpha: .8),
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    "Discover the things you want to\nlearn and grow with them",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black.withValues(alpha: 0.5),
                    ),
                  ),
                  // =================== button part =====================
                  CustomButton(
                    title: 'Get Started',
                    width: size.width * .5,
                    onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>  const
                        NavBarView()));

                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
