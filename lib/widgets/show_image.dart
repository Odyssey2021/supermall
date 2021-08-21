import 'package:flutter/material.dart';

class ShowImage extends StatelessWidget {
  final String path; // ตัวแปรคงที่ path รูปภาพ
  const ShowImage({Key? key, required this.path}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(path);
  }
}
