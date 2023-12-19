import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:run_and_earn/utils.dart';

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
                  Row(
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
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(colors: [
                  Constants.primaryColor.withOpacity(.5),
                  Color(0xffF14985).withOpacity(.5)
                ]),
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        'Share & Get',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        'Get 2x point for every steps, only valid for today',
                        overflow: TextOverflow.fade,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                      child: Image.asset(
                    'assets/images/onbording.png',
                    width: 150,
                    height: 100,
                    fit: BoxFit.contain,
                  ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    'History',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'See All',
                      style: TextStyle(
                          color: Constants.primaryColor, fontSize: 16),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      extendBody: true,
    );
  }
}

class FristContainerFristSection extends StatelessWidget {
  const FristContainerFristSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               Row(
                 children: [
                   Text(
                     '14,000/',
                     style: TextStyle(color: Colors.white.withOpacity(.5)),
                   ),
                   Text(
                     '15,000',
                     style: TextStyle(color: Colors.white, fontSize: 18),
                   ),
                   Text(
                     'steps',
                     style: TextStyle(color: Colors.white.withOpacity(.5)),
                   ),
                 ],
               ),
 // .................Can't Make Spacer() here..................
                Text(
                  'Level 5',
                  style: TextStyle(color: Color(0xffFFC932), fontSize: 18),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 10,
              width: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(colors: [
                    Color(0xffB96FFF),
                    Color(0xff55CB74),
                    Color(0xffF4F4F4),
                  ])),
            )
          ],
        ),
        SizedBox(
          width: 20,
        ),
        Image.asset(
          'assets/images/Level badge.png',
          height: 65,
          fit: BoxFit.cover,
        )
      ],
    );
  }
}

class FristContainerSecondSection extends StatelessWidget {
  const FristContainerSecondSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     //...................Error when Write =>   Width : double.infinity ......................
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.withOpacity(.2),
          ),
          color: Constants.backGroundColor.withOpacity(.2),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            //............................................................Hight Of Image
            radius: 40,
            backgroundImage: Image.asset(
              'assets/images/Facebook-logo.png',
            width: 20,
            ).image,

          ),

          Column(
            children: [
              Text(
                '26 May',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w300,
                    fontSize: 16),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Today',
                style: TextStyle(color: Color(0xff43C465), fontSize: 22),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '01 : 09 : 44 ',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w300,
                    fontSize: 16),
              ),
            ],
          ),
          SizedBox(
            width: 20,
          ),
          CircularPercentIndicator(
            radius: 50,
            center: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.man,
                  color: Colors.grey,
                  size: 45,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 3.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
//.....................Divider Did Not Appear
                      Text(
                        '2345',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      Divider(color: Colors.grey, height: 3, thickness: 3),
                      Text(
                        '2345',
                        style: TextStyle(color: Colors.green, fontSize: 14),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class FristContainerthiredSection extends StatelessWidget {
  const FristContainerthiredSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
              color: Constants.backGroundColor.withOpacity(.2),
              borderRadius: BorderRadius.circular(20)),
          width: 140,
          height: 120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '53,524',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.cloud_outlined,
                    color: Colors.white,
                  ),
                  Text(
                    'Steps',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          width: 50,
        ),
        Container(
          decoration: BoxDecoration(
              color: Constants.backGroundColor.withOpacity(.2),
              borderRadius: BorderRadius.circular(20)),
          width: 140,
          height: 120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '1000',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.cloud_outlined,
                    color: Colors.white,
                  ),
                  Text(
                    'Earned Points',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
