import 'package:flutter/material.dart';
import 'package:run_and_earn/views/login.dart';
import 'package:run_and_earn/utils.dart';
import 'package:run_and_earn/widgets/custom_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);
  static String id = 'Onboarding';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Constants.backGroundColor,
        actions: [
          Center(
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Skip',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.normal),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Constants.backGroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Image.asset(
              'assets/images/onbording.png',
              width: double.infinity,
              height: 280,
              fit: BoxFit.contain,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xff2F3C50),
                  borderRadius: BorderRadius.circular(80),
                  border:
                      Border.all(color: Colors.grey.withOpacity(.2), width: 1)),
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Run',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Text(
                      textAlign: TextAlign.center,
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    onTap: () {
                      Navigator.pushNamed(context, LogInScreen.id);
                    },
                    text: 'Next',
                    width: 150,
                    hight: 50,
                    icon: Icons.arrow_forward,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already have an account?',
                  style: TextStyle(
                    color: Colors.white,
                  )),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    color: Color(0xff7B61FF),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
