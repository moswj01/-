import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController
  final player = AudioPlayer();

  final count = 0.obs;
  @override
  void onInit() async {
    await player.setAsset('assets/voice_306199.mp3');
    player.play();
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
