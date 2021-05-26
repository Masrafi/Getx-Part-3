import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_from32/internet_connetion/network_controller.dart';

import 'network_binding.dart';

class Home extends StatelessWidget {
  final NetworkController _networkController = Get.find<NetworkController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomeView"),
      ),
      body: Center(
          child: Obx(
        () => Text(
          _networkController.connectionStatus.value == 1
              ? 'Wi Fi Connected'
              : (_networkController.connectionStatus.value == 2
                  ? 'Mobile Internet'
                  : "No connection"),
          style: TextStyle(fontSize: 20),
        ),
      )),
    );
  }
}
