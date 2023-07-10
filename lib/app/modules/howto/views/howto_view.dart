import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kid_learning/app/routes/app_pages.dart';

import '../controllers/howto_controller.dart';

class HowtoView extends GetView<HowtoController> {
  const HowtoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 6),
      () {
        Get.offAllNamed(AppPages.INITIAL);
      },
    );
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/howto.jpg'), fit: BoxFit.fitWidth)),
      ),
    );
  }
}
