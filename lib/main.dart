import 'package:flutter/material.dart';
import 'package:run_and_earn/views/VerifyingEmail.dart';
import 'package:run_and_earn/views/acount_updated.dart';
import 'package:run_and_earn/views/get_started.dart';
import 'package:run_and_earn/views/home_screen.dart';
import 'package:run_and_earn/views/login.dart';
import 'package:run_and_earn/views/onboarding.dart';

void main() {
  runApp(const RunEarnApp());
}

class RunEarnApp extends StatelessWidget {
  const RunEarnApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        GetStartedScreen.id : (context) => GetStartedScreen(),
        OnboardingScreen.id : (context) => OnboardingScreen(),
        LogInScreen.id :(context) => LogInScreen(),
        HomeScreen.id :(context) => HomeScreen(),
        AcountUpdated.id :(context) => AcountUpdated(),
        VerifyingEmail.id :(context) => VerifyingEmail(),
      },
      initialRoute:  GetStartedScreen.id ,
    );
  }
}
