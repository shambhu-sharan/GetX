import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/app/modules/common/navigation_drawer.dart';
import 'package:getx/app/modules/navigation_drawer/controllers/navigation_controller.dart';

class SnackbarView extends GetView<NavigationDrawerController> {
  const SnackbarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      appBar: AppBar(
        title: const Text('SnackBarView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Get.snackbar('Snack Bar title', 'snakck bar message here',
                    snackPosition: SnackPosition.BOTTOM,
                    titleText: const Text("Title Text"),
                    messageText: const Text(
                      "Another Message",
                      style: TextStyle(color: Colors.white),
                    ),
                    colorText: Colors.red,
                    backgroundColor: Colors.black,
                    borderRadius: 30,
                    margin: const EdgeInsets.all(10),
                    maxWidth: 100,
                    animationDuration: const Duration(milliseconds: 3000),
                    backgroundGradient: const LinearGradient(
                        colors: [Colors.red, Colors.green]),
                    borderColor: Colors
                        .blue, // must use border width if you use this attribute else some exception will come
                    borderWidth: 10,
                    boxShadows: [
                      const BoxShadow(
                          color: Colors.white,
                          offset: Offset(30, 50),
                          spreadRadius: 10,
                          blurRadius: 10)
                    ],
                    isDismissible: true,
                    dismissDirection: DismissDirection.horizontal,
                    forwardAnimationCurve: Curves.bounceInOut,
                    duration: const Duration(milliseconds: 8000),
                    icon: const Icon(Icons.send, color: Colors.white),
                    shouldIconPulse: false,
                    leftBarIndicatorColor: Colors.green,
                    mainButton: TextButton(
                      onPressed: () {},
                      child: const Text('Retry',
                          style: TextStyle(
                            color: Colors.yellow,
                          )),
                    ),
                    onTap: (snack) => {const Text('Retry Clicked')},
                    overlayBlur: 5,
                    overlayColor: Colors.grey,
                    padding: const EdgeInsets.all(25),
                    showProgressIndicator: true,
                    progressIndicatorBackgroundColor: Colors.deepPurple,
                    progressIndicatorValueColor:
                        const AlwaysStoppedAnimation(Colors.white),
                    reverseAnimationCurve: Curves.bounceInOut,
                    snackbarStatus: (status) => {},
                    userInputForm: Form(
                        child: Row(
                      children: const [Expanded(child: TextField())],
                    )));
              },
              child: const Text('Show Snack Bar'),
            )
          ],
        ),
      ),
    );
  }
}
