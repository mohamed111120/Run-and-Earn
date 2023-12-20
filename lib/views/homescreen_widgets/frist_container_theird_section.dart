import 'package:flutter/material.dart';

import '../../utils.dart';

class FristContainerthiredSection extends StatelessWidget {
  const FristContainerthiredSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                    fontSize: 16,
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
                    fontSize: 16,
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
                    style: TextStyle(color: Colors.white,   fontSize: 10,
                    ),
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
