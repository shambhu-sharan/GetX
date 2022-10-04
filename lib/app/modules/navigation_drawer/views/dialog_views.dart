import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/app/modules/common/navigation_drawer.dart';
import 'package:getx/app/modules/navigation_drawer/controllers/navigation_controller.dart';

class DialogView extends GetView<NavigationDrawerController> {
  const DialogView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      appBar: AppBar(
        title: const Text('Dialog View'),
        centerTitle: true,
      ),
      body: Center(
          child: TextButton(
        onPressed: () {
          Get.defaultDialog();
          Get.defaultDialog(
              title: 'Dialog Title',
              titleStyle: const TextStyle(fontSize: 25),
              middleText: 'This is description',
              middleTextStyle: const TextStyle(fontSize: 20),
              backgroundColor: Colors.purple,
              radius: 5,
              // customize the middle text
              content: Row(
                children: const [
                  CircularProgressIndicator(),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(child: Text('Loading.....'))
                ],
              ),
              // default cancel & confirm action
              textCancel: "Cancel",
              cancelTextColor: Colors.white,
              textConfirm: "Confirm",
              confirmTextColor: Colors.white,
              onCancel: () {},
              onConfirm: () {},
              buttonColor: Colors.green,
              cancel: const Text(
                'Cancel',
                style: TextStyle(color: Colors.white),
              ),
              confirm: const Text(
                'Confirm',
                style: TextStyle(color: Colors.white),
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: const Text("Back")),
                TextButton(onPressed: () {}, child: const Text("Next"))
              ]);
        },
        child: const Text('show Dialog'),
      )),
    );
  }
}
