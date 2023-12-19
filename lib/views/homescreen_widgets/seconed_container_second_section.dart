import 'package:flutter/material.dart';

import '../../utils.dart';

class SeconedContainerSeconedSection extends StatelessWidget {
  const SeconedContainerSeconedSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return            Padding(
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
    ;
  }
}


