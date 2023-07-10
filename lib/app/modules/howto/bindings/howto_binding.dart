import 'package:get/get.dart';

import '../controllers/howto_controller.dart';

class HowtoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HowtoController>(
      () => HowtoController(),
    );
  }
}
