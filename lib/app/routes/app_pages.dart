import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:getx/app/modules/navigation_drawer/bindings/navigation_drawer_binding.dart';
import 'package:getx/app/modules/navigation_drawer/views/snackbar_views.dart';
import 'package:getx/app/modules/navigation_drawer/views/chat_views.dart';
import 'package:getx/app/modules/navigation_drawer/views/photo_views.dart';
import 'package:getx/app/modules/navigation_drawer/views/video_views.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SNACKBAR;

  static final routes = [
    GetPage(
      name: _Paths.SNACKBAR,
      page: () => const SnackbarView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PHOTO,
      page: () => const PhotoView(),
    ),
    GetPage(
      name: _Paths.VIDEO,
      page: () => const VideoView(),
    ),
    GetPage(
      name: _Paths.CHAT,
      page: () => const ChatView(),
    ),
  ];
}
