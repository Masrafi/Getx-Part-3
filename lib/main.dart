import 'package:flutter/material.dart';
import 'package:getx_from32/imagePicker/home_view.dart';
import 'package:getx_from32/internet_connetion/home.dart';
import 'package:get/get.dart';
import 'package:getx_from32/internet_connetion/routes/app_pages.dart';

import 'cropperCompresserUpload/home_view.dart';
import 'internet_connetion/network_binding.dart';

/*void main() {
  runApp(GetMaterialApp(
    initialBinding: NetworkBinding(),
    getPages: AppPages.routes,
    initialRoute: AppPages.INITIAL,
  ));
}*/
void main() {
  runApp(GetMaterialApp(
    home: HomeView(),
  ));
}
