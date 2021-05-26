import 'package:get/get.dart';

import 'package:getx_from32/internet_connetion/home.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => Home(),
      //binding: HomeBinding(),
    ),
  ];
}
