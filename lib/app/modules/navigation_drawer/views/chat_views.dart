import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:getx/app/modules/common/navigation_drawer.dart';
import 'package:getx/app/modules/navigation_drawer/controllers/navigation_controller.dart';

class ChatView extends GetView<NavigationDrawerController> {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      appBar: AppBar(
        title: const Text('Chat View'),
        centerTitle: true,
      ),
    );
  }
}
