import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';
import 'onboarding.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);
  static String id = 'get started';

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xff28333F),
      body: SafeArea(
          child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.cover,
          image: Image.asset(
            'assets/images/get started.png',
            width: double.infinity,
          ).image,
        )),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Running App',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  textAlign: TextAlign.center,
                  'Run and earn with our app. Some text Example will be her',
                  style: TextStyle(color: Color(0xffAEA8B2), fontSize: 10),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CustomButton(
                  onTap: () {
                    Navigator.pushNamed(context, OnboardingScreen.id);
                  },
                  text: 'Get Started',
                  width: 350,
                  hight: 70),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
