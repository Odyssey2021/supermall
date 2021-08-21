import 'package:flutter/material.dart';
import 'package:shoppingmall/states/authen.dart';
import 'package:shoppingmall/states/buyer_service.dart';
import 'package:shoppingmall/states/create_account.dart';
import 'package:shoppingmall/states/rider_service.dart';
import 'package:shoppingmall/states/saler_service.dart';
import 'package:shoppingmall/utility/my_constant.dart';

//สร้าง Router
final Map<String, WidgetBuilder> map = {
  '/authen': (BuildContext context) => Authen(),
  '/createAccount': (BuildContext context) => CreateAccount(),
  '/buyerService': (BuildContext context) => BuyerService(),
  '/salerService': (BuildContext context) => SalerService(),
  '/riderService': (BuildContext context) => RiderService(),
};

String? initalRoute;

void main() {
  initalRoute = MyConstant.routeAuthen; //เรียกค่า constant จาก my_constant.dart
  runApp(MyApp());
}

// สร้าง stateless ขึ้นมา
class MyApp extends StatelessWidget {
  //ชื่อ class นี้ต้องเป็น MyApp เสมอ
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: MyConstant.appName, //เรียกค่าคงที่จาก my_constant.dart
      routes: map, //เรียกค่าจาก map จาก Map ด้านบน
      initialRoute: initalRoute,
    );
  }
}
