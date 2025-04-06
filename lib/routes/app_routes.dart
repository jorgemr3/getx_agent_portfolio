import 'package:get/get.dart';
import '../views/counter_page.dart';
import '../bindings/counter_binding.dart';

class AppRoutes {
  static final routes = [
    GetPage(
      name: '/',
      page: () => CounterPage(),
      binding: CounterBinding(),
    ),
  ];
}