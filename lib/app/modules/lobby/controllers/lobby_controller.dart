import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LobbyController extends GetxController {
  //TODO: Implement LobbyController

  final count = 0.obs;
  @override
  void onInit() {
    // Future.delayed(
    //   Duration(seconds: 1),
    //   () {
    //     Get.defaultDialog(
    //         title: 'เกิดข้อผิดพลาด',
    //         content: Text("ไม่สามารถดาวน์โหลดทรัพยากรได้"));
    //   },
    // );
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
