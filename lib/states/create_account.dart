import 'package:flutter/material.dart';
import 'package:shoppingmall/utility/my_constant.dart';
import 'package:shoppingmall/widgets/show_title.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  String? typeUser;

  Row buildName(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            margin: EdgeInsets.only(top: 16),
            width: size * 0.6,
            child: TextField(
              decoration: InputDecoration(
                labelStyle: MyConstant().h3Style(),
                labelText: 'Name',
                prefixIcon: Icon(
                  Icons.fingerprint,
                  color: MyConstant.dark,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: MyConstant.dark),
                  borderRadius: BorderRadius.circular(30),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: MyConstant.light),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            )),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    //ประกาศค่าตัวแปรขนาดหน้า
    double size = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Create New Account'),
        backgroundColor: MyConstant.primary,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          buildTitle('ข้อมูลทั่วไป :'),
          buildName(size),
          buildTitle('ชนิดของ User :'),
          buildRadioBuyer(size),
          buildRadioSeller(size),
          buildRadioRider(size),
        ],
      ),
    );
  }

  Row buildRadioBuyer(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: size * 0.6,
          child: RadioListTile(
            value: 'buyer',
            groupValue: typeUser,
            onChanged: (value) {
              setState(() {
                typeUser = value as String?;
              });
            },
            title: ShowTitle(
              title: 'ผู้ซื้อ (buyer)',
              textstyle: MyConstant().h3Style(),
            ),
          ),
        ),
      ],
    );
  }

  Row buildRadioSeller(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: size * 0.6,
          child: RadioListTile(
            value: 'seller',
            groupValue: typeUser,
            onChanged: (value) {
              setState(() {
                typeUser = value as String?;
              });
            },
            title: ShowTitle(
              title: 'ผู้ขาย (seller)',
              textstyle: MyConstant().h3Style(),
            ),
          ),
        ),
      ],
    );
  }

  Row buildRadioRider(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: size * 0.6,
          child: RadioListTile(
            value: 'rider',
            groupValue: typeUser,
            onChanged: (value) {
              setState(() {
                typeUser = value as String?;
              });
            },
            title: ShowTitle(
              title: 'ผู้ส่งสินค้า (rider)',
              textstyle: MyConstant().h3Style(),
            ),
          ),
        ),
      ],
    );
  }

  Container buildTitle(String titles) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      child: ShowTitle(
        title: titles,
        textstyle: MyConstant().h2Style(),
      ),
    );
  }
}
