import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:kid_learning/app/routes/app_pages.dart';

import '../controllers/lesson_controller.dart';

class LessonView extends GetView<LessonController> {
  LessonView({Key? key}) : super(key: key);
  LessonController lessonController = Get.put(LessonController());
  GetStorage box = GetStorage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'ยินดีต้อนรับ',
                  style: TextStyle(
                    fontSize: 40,
                    color: Color(0xFF2A94F1),
                  ),
                ),
                Text(
                  Get.arguments['name'],
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF1B78CA),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 100),
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 200,
                            height: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage('assets/girl.png'))),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 200,
                            height: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage('assets/boy.png'))),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.blue[400],
                      borderRadius: BorderRadius.circular(10)),
                  child: TextButton(
                      onPressed: () {
                        Get.toNamed('/lobby',
                            arguments: {'name': box.read("fullname")});
                      },
                      child: Text(
                        "เริ่มกันเลย!",
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
