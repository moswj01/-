import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:kid_learning/app/routes/app_pages.dart';

import '../controllers/lobby_controller.dart';

class LobbyView extends GetView<LobbyController> {
  LobbyView({Key? key}) : super(key: key);
  LobbyController lobbyController = Get.put(LobbyController());
  GetStorage box = GetStorage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/background.jpg'), fit: BoxFit.cover)),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 50),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        "ยินดีต้อนรับ ",
                        style: TextStyle(
                            fontSize: 40,
                            color: Color(0xFFA8DAF8),
                            shadows: [
                              BoxShadow(
                                  color: Color(0xff3c90d6),
                                  offset: Offset(-1, 2),
                                  spreadRadius: 10,
                                  blurStyle: BlurStyle.solid)
                            ]),
                      ),
                      Text(
                        Get.arguments['name'],
                        style: TextStyle(
                            fontSize: 24,
                            color: Color(0xff3c90d6),
                            shadows: [
                              BoxShadow(
                                  color: Color(0xFFFFFFFF),
                                  offset: Offset(-2, -2),
                                  spreadRadius: 10,
                                  blurStyle: BlurStyle.solid),
                              BoxShadow(
                                  color: Color(0xFFFFFFFF),
                                  offset: Offset(2, 2),
                                  spreadRadius: 10,
                                  blurStyle: BlurStyle.solid),
                            ]),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/OBJECTS.png',
                      ),
                      fit: BoxFit.fill)),
            ),
            Container(
              child: ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            colors: [Color(0xFF00A8FB), Color(0xFF74D3FF)])),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "การขับถ่าย",
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            colors: [Color(0xFF00A8FB), Color(0xFF74D3FF)])),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "การแต่งตัว",
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            colors: [Color(0xFF00A8FB), Color(0xFF74D3FF)])),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "การรับประทานอาหาร",
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            colors: [Color(0xFF00A8FB), Color(0xFF74D3FF)])),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "การแปรงฟัน",
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            colors: [Color(0xFF00A8FB), Color(0xFF74D3FF)])),
                    child: TextButton(
                        onPressed: () {
                          Get.toNamed('/tutorial1',
                              arguments: {'name': box.read("fullname")});
                        },
                        child: Text(
                          "การอาบน้ำ",
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
