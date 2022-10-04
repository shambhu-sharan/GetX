import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/app/routes/app_pages.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Getx Demo',
    initialRoute: AppPages.INITIAL,
    getPages: AppPages.routes,
  ));
}
