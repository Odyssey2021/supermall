import 'package:flutter/material.dart';
import 'package:shoppingmall/utility/my_constant.dart';
import 'package:shoppingmall/widgets/show_image.dart';
import 'package:shoppingmall/widgets/show_title.dart';

class Authen extends StatefulWidget {
  const Authen({Key? key}) : super(key: key);

  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  bool statusRedEye = true; // ค่าตัวแปรสำหรับช่องพาสเวิร์ด
  @override
  Widget build(BuildContext context) {
    double size =
        MediaQuery.of(context).size.width; //ค่าตัวแปร เก็บขนาดกว้างจออัตโนมัติ
    return Scaffold(
      body: SafeArea(
          child: GestureDetector(
        //ลดคีย์ลง เมื่อแตะใด ๆ บนจอ
        onTap: () => FocusScope.of(context).requestFocus(FocusScopeNode()),
        behavior: HitTestBehavior.opaque,
        child: ListView(
          children: [
            buildImage(size), // method แยกไปข้างล่าง
            buildAppName(),
            buildUser(size),
            buildPassword(size),
            buildLogIn(size),
            buildCreateAccount(),
          ],
        ),
      )),
    );
  }

  Row buildCreateAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ShowTitle(
          title: 'Non Account ?',
          textstyle: MyConstant().h3Style(),
        ),
        TextButton(
          onPressed: () =>
              Navigator.pushNamed(context, MyConstant.routeCreateAccount),
          child: Text("Create Account"),
        ),
      ],
    );
  }

  Row buildLogIn(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 16),
          width: size * 0.6,
          child: ElevatedButton(
              style: MyConstant().myButtonStyle(),
              onPressed: () {},
              child: Text("Login")),
        ),
      ],
    );
  }

  Row buildUser(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            margin: EdgeInsets.only(top: 16),
            width: size * 0.6,
            child: TextField(
              decoration: InputDecoration(
                labelStyle: MyConstant().h3Style(),
                labelText: 'user',
                prefixIcon: Icon(
                  Icons.account_circle_outlined,
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

  Row buildPassword(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            margin: EdgeInsets.only(top: 16),
            width: size * 0.6,
            child: TextField(
              obscureText:
                  statusRedEye, // กำหนดค่าเป็น true แต่ในค่าตัวแปร statusRedEye แทน
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      // ใช้ !statusRedEye แทน false
                      statusRedEye = !statusRedEye;
                    });
                  },
                  icon:
                      statusRedEye //การใช้ if แบบสั้น ? เงื่อนไข (true): เงื่อนไข (false)
                          ? Icon(
                              Icons.remove_red_eye,
                              color: MyConstant.dark,
                            )
                          : Icon(
                              Icons.remove_red_eye_outlined,
                              color: MyConstant.dark,
                            ),
                ),
                labelStyle: MyConstant().h3Style(),
                labelText: 'Password',
                prefixIcon: Icon(
                  Icons.lock_clock_outlined,
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

  Row buildAppName() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ShowTitle(title: MyConstant.appName, textstyle: MyConstant().h1Style()),
      ],
    );
  }

  Row buildImage(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(width: size * 0.6, child: ShowImage(path: MyConstant.image4)),
      ],
    );
  }
}
