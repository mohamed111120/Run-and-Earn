import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      this.icon,
      required this.onTap,
      required this.text,
      required this.width,
      required this.hight})
      : super(key: key);
  final VoidCallback onTap;
  final String text;
  final double width;
  final double hight;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text(text,style: TextStyle(fontSize: 20),), Icon(icon)],
      ),
      style: ElevatedButton.styleFrom(
          fixedSize: Size(width, hight),
          backgroundColor: Color(0xff7B61FF),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    );
  }
}
