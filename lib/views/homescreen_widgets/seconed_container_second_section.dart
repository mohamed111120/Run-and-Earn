import 'package:flutter/material.dart';

import '../../utils.dart';

class SeconedContainerSeconedSection extends StatelessWidget {
  const SeconedContainerSeconedSection({Key? key, required this.onTap}) : super(key: key);
final VoidCallback onTap ;
  @override
  Widget build(BuildContext context) {
    return            Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Expanded(
              child: GestureDetector(
                onTap: onTap,
                child: Text(
                  'History',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
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


