import 'package:flutter/material.dart';

class FristContainerFristSection extends StatelessWidget {
  const FristContainerFristSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Text(
                          '14,000/',
                          style: TextStyle(color: Colors.white.withOpacity(.5),fontSize: 12),
                        ),
                        Text(
                          '15,000',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Text(
                          'steps',
                          style: TextStyle(color: Colors.white.withOpacity(.5),fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  // .................Can't Make Spacer() here..................
                  Text(
                    'Level 5',
                    style: TextStyle(color: Color(0xffFFC932), fontSize: 18),
                  ),
                ],
              ),

              Container(

                height: 10,
                width: double.infinity,
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
