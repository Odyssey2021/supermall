import 'package:flutter/material.dart';

class MyConstant {
  // General
  static String appName = 'Shopping Mall';
  static String domain = 'https://bf22-125-24-192-126.ngrok.io';

  // Route
  static String routeAuthen = '/authen';
  static String routeCreateAccount = '/createAccount';
  static String routeBuyerService = '/buyerService';
  static String routeSalerService = '/salerService';
  static String routeRiderService = '/riderService';

  //images
  static String image1 = 'images/image1.png';
  static String image2 = 'images/image2.png';
  static String image3 = 'images/image3.png';
  static String image4 = 'images/image4.png';
  static String image5 = 'images/image5.png';
  static String avartar = 'images/avartar.png';

  /*Color ตั้งชื่อสีให้ตรงกับ 
    https://material.io/resources/color/#!/?view.left=0&view.right=1&primary.color=FFC400
    */
  static Color primary = Color(0xffffc400); //ต้องนำหน้าด้วย 0xffตามด้วยค่าสี
  static Color dark = Color(0xffc79400);
  static Color light = Color(0xfffff64f);

  //style เนื่องจากเป็น arrow method เวลาเรียกใช้ ต้องเรียกเป็น object คือมีต่อท้าย()
  TextStyle h1Style() => TextStyle(
        fontSize: 24,
        color: dark,
        fontWeight: FontWeight.bold,
      );
  TextStyle h2Style() => TextStyle(
        fontSize: 18,
        color: dark,
        fontWeight: FontWeight.w700,
      );
  TextStyle h3Style() => TextStyle(
        fontSize: 14,
        color: dark,
        fontWeight: FontWeight.normal,
      );

  //Button
  ButtonStyle myButtonStyle() => ElevatedButton.styleFrom(
        primary: MyConstant.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      );
}
