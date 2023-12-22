import 'package:flutter/material.dart';
import 'package:material_dialogs/dialogs.dart';
import 'package:run_and_earn/utils.dart';
import 'package:run_and_earn/views/home_screen.dart';
import 'package:run_and_earn/widgets/custom_button.dart';

import 'VerifyingEmail.dart';

class AcountUpdated extends StatelessWidget {
  const AcountUpdated({Key? key}) : super(key: key);
  static String id = ' acount updated';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.backGroundColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: CustomButton(
              onTap: () {
                Dialogs.materialDialog(
                  context: context,
                  barrierLabel: 'OsOS',
                  barrierColor:  Colors.transparent.withOpacity(.5),
                  msgAlign: TextAlign.center,
                  color: Constants.backGroundColor,
                  titleStyle: TextStyle(color: Colors.white),
                  msgStyle: TextStyle(color: Colors.white,fontSize: 12),
                  title: 'Update Acount',
                  msg: 'Your account details have been successfully changed',
                  actions: [
                    CustomButton(
                      onTap: (){
                        Navigator.pushNamed(context,VerifyingEmail.id);
                      },
                      text: 'OK',
                      width: 200,
                      hight: 50,
                    )
                  ],
                );
              },
              text: '  Update Acount',
              width: 300,
              hight: 50,
            ))
          ],
        ),
      ),
    );
  }
}
