import 'package:get/get.dart';
import 'package:getx/app/modules/navigation_drawer/controllers/navigation_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<NavigationDrawerController>(
      NavigationDrawerController(),
    );
  }
}
