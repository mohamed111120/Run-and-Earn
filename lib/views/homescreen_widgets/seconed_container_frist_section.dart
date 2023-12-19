import 'package:flutter/material.dart';

import '../../utils.dart';

class SeconedContainerFristSection extends StatelessWidget {
  const SeconedContainerFristSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return             Container(
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
    )
    ;
  }
}
