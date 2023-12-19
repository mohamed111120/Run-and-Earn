import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:run_and_earn/utils.dart';
import 'package:run_and_earn/views/homescreen_widgets/seconed_container_frist_section.dart';
import 'package:run_and_earn/views/homescreen_widgets/seconed_container_second_section.dart';

import 'homescreen_widgets/frist_container_frist_section.dart';
import 'homescreen_widgets/frist_container_seconed_section.dart';
import 'homescreen_widgets/frist_container_theird_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String id = 'home screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu_rounded),
        title: Row(children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: Image.asset(
              'assets/images/profile image1.png',

            ).image,
          ),
          SizedBox(
            width: 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello!',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w300),
              ),
              Text(
                'Daniala',
                style: TextStyle(color: Colors.white),
              ),
            ],
          )
        ]),
        actions: [
          Icon(Icons.archive_outlined, size: 30),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.mark_email_unread_outlined, size: 30),
        ],
        backgroundColor: Constants.primaryColor.withOpacity(1),
        elevation: 0,
      ),
      backgroundColor: Constants.backGroundColor.withOpacity(1),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(
                        20,
                      )),
                  color: Constants.primaryColor),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      child: Column(
                        children: [
                          FristContainerFristSection(),
                          SizedBox(
                            height: 20,
                          ),
                          FristContainerSecondSection(),
                          SizedBox(
                            height: 20,
                          ),
                          FristContainerthiredSection()
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SeconedContainerFristSection(),
            SeconedContainerSeconedSection(),

          ],
        ),
      ),
    );
  }
}

