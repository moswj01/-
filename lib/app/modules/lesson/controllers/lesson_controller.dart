import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LessonController extends GetxController {
  //TODO: Implement LessonController
  var fullname = "".obs;
  GetStorage box = GetStorage();
  final count = 0.obs;

  @override
  void onInit() {
    update();
    fullname.value = Get.arguments['name'];
    print(box.read('fullname'));

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
