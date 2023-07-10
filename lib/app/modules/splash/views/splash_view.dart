import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
   SplashView({Key? key}) : super(key: key);

  SplashController splashController = Get.put(SplashController());
  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 6),
      () {
        Get.offAllNamed('/howto');
      },
    );
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/splash.png'), fit: BoxFit.fitWidth)),
      ),
    );
  }
}
