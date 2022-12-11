import 'package:onze_shop/getx/home/home/home_controller.dart';
import 'package:get/get.dart';

class ChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<homeController>(() => homeController());
  }
}
