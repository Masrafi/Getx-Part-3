import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_from32/internet_connetion/network_controller.dart';

class NetworkBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NetworkController>(() => NetworkController());
  }
}
