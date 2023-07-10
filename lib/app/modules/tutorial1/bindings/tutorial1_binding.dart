import 'package:get/get.dart';

import '../controllers/tutorial1_controller.dart';

class Tutorial1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Tutorial1Controller>(
      () => Tutorial1Controller(),
    );
  }
}
