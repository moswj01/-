import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class Tutorial1Controller extends GetxController {
  late VideoPlayerController water;
  late VideoPlayerController shower;
  late VideoPlayerController soap;
  late VideoPlayerController shampoo;
  late VideoPlayerController towel;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    water.pause();
    shower.pause();
    soap.pause();
    shampoo.pause();
    towel.pause();
    super.onClose();
  }

  waterPlay() async {
    water = await VideoPlayerController.asset('assets/water.mp4')
      ..initialize().then((value) {
        update();

        Get.defaultDialog(
            title: 'น้ำ',
            content:
                Container(width: 300, height: 200, child: VideoPlayer(water)));
        water.play();
        water.setVolume(110);
        Future.delayed(
          Duration(seconds: 5),
          () => Get.back(),
        );
      });
  }

  showerPlay() async {
    shower = await VideoPlayerController.asset('assets/shower.mp4')
      ..initialize().then((value) {
        update();

        Get.defaultDialog(
            title: 'ฝักบัว',
            content:
                Container(width: 300, height: 200, child: VideoPlayer(shower)));
        shower.play();
        shower.setVolume(110);
        Future.delayed(
          Duration(seconds: 5),
          () => Get.back(),
        );
      });
  }

  soapPlay() async {
    soap = await VideoPlayerController.asset('assets/soap.mp4')
      ..initialize().then((value) {
        update();

        Get.defaultDialog(
            title: 'สบู่',
            content:
                Container(width: 300, height: 200, child: VideoPlayer(soap)));
        soap.play();
        soap.setVolume(110);
        Future.delayed(
          Duration(seconds: 5),
          () => Get.back(),
        );
      });
  }

  shampooPlay() async {
    shampoo = await VideoPlayerController.asset('assets/shampoo.mp4')
      ..initialize().then((value) {
        update();

        Get.defaultDialog(
            title: 'ยาสระผม',
            content: Container(
                width: 300, height: 200, child: VideoPlayer(shampoo)));
        shampoo.play();
        shampoo.setVolume(110);
        Future.delayed(
          Duration(seconds: 6),
          () => Get.back(),
        );
      });
  }

  towelPlay() async {
    towel = await VideoPlayerController.asset('assets/towel.mp4')
      ..initialize().then((value) {
        update();

        Get.defaultDialog(
            title: 'ผ้าเช็ดตัว',
            content:
                Container(width: 300, height: 200, child: VideoPlayer(towel)));
        towel.play();
        towel.setVolume(110);
        Future.delayed(
          Duration(seconds: 5),
          () => Get.back(),
        );
      });
  }
}
