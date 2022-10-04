import 'package:get/get.dart';
import 'package:getx/app/routes/app_pages.dart';

class NavigationDrawerController extends GetxController {
  @override
  void onClose() {}

  navigateToPage(int index) {
    if (index == 0) {
      Get.toNamed(Routes.SNACKBAR);
    } else if (index == 1) {
      Get.toNamed(Routes.DIALOG);
    } else if (index == 2) {
      Get.toNamed(Routes.PHOTO);
    } else if (index == 3) {
      Get.toNamed(Routes.VIDEO);
    }
  }
}
