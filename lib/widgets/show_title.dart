import 'package:flutter/material.dart';

class ShowTitle extends StatelessWidget {
  final String title; // กำหนดค่าตัวแปรคงที่
  final TextStyle textstyle;
  const ShowTitle({
    Key? key,
    required this.title,
    required this.textstyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: textstyle,
    );
  }
}
