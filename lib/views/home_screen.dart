import 'dart:ffi';

import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:run_and_earn/utils.dart';
import 'package:run_and_earn/views/get_started.dart';
import 'package:run_and_earn/views/homescreen_widgets/seconed_container_frist_section.dart';
import 'package:run_and_earn/views/homescreen_widgets/seconed_container_second_section.dart';
import 'package:run_and_earn/views/login.dart';
import 'package:run_and_earn/views/onboarding.dart';

import 'homescreen_widgets/frist_container_frist_section.dart';
import 'homescreen_widgets/frist_container_seconed_section.dart';
import 'homescreen_widgets/frist_container_theird_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String id = 'home screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _selecteTab = _SelecteTab.home;

  void handelIndexChanged(int i) {
    setState(() {
      _selecteTab = _SelecteTab.values[i];
    });
  }

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
      body: Column(
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
      extendBody: true,
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: DotNavigationBar(
          backgroundColor: Constants.primaryColor.withOpacity(.5),
          paddingR: EdgeInsets.all(6),
          margin: EdgeInsets.symmetric(horizontal: 10),
          currentIndex: _SelecteTab.values.indexOf(_selecteTab),
          dotIndicatorColor: Colors.black,
          unselectedItemColor: Colors.grey[300],
          onTap: handelIndexChanged,
          items: [
            DotNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 35,
              ),
              selectedColor: Color(0xffF14985).withOpacity(.5),
              unselectedColor: Colors.grey,
            ),
            DotNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                size: 35,
              ),
              selectedColor: Color(0xffF14985).withOpacity(.5),
              unselectedColor: Colors.grey,
            ),
            DotNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 35,
              ),
              selectedColor: Color(0xffF14985).withOpacity(.5),
              unselectedColor: Colors.grey,
            ),
            DotNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 35,
              ),
              selectedColor: Color(0xffF14985).withOpacity(.3),
              unselectedColor: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}

enum _SelecteTab { home, favorite, search, person }
