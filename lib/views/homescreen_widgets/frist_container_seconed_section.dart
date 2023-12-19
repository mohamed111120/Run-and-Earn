import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../utils.dart';

class FristContainerSecondSection extends StatelessWidget {
  const FristContainerSecondSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
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
