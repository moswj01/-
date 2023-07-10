import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:kid_learning/app/routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);
  HomeController homeController = HomeController();
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setPreferredOrientations(
    //     [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/background.jpg'),
                  fit: BoxFit.cover)),
          child: Center(
            child: Container(
              margin: EdgeInsets.only(top: 200, left: 30, right: 30),
              child: Column(
                children: [
                  TextFormField(
                    controller: homeController.first_name,
                    decoration: InputDecoration(
                      hintText: "ชื่อ",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: Color(0xFF7999D1), width: 2),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: homeController.last_name,
                    decoration: InputDecoration(
                      hintText: "นามสกุล",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: Color(0xFF7999D1), width: 2),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      GetStorage box = GetStorage();
                      box.write(
                          "fullname",
                          homeController.first_name.text +
                              " " +
                              homeController.last_name.text);
                      if (box.read('fullname') != null) {
                        Get.toNamed((Routes.LESSON),
                            arguments: {'name': box.read("fullname")});
                      }
                    },
                    child: Container(
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              colors: [Color(0xAD23B0C5), Color(0xFF87E8FB)])),
                      child: Center(
                          child: Text(
                        "เข้าสู่บทเรียน",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      )),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
