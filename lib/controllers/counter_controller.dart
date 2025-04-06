import 'package:get/get.dart';
import 'package:flutter/material.dart';
// import 'package:getx_agent_portfolio/views/counter_page.dart';

class CounterController extends GetxController {
  var count = 0.obs;
  var isDarkMode = false.obs;
  
  void increment() {
    count++;
     _showSnackbar();
  }

  void resetToZero() {
    count.value = 0;
    _showSnackbar();
  }

  void multiply() {
    count.value *= 2;
    _showSnackbar();
  }
  
  void divide() {
    if (count.value > 0) {
      count.value ~/= 2;
      _showSnackbar();
    } else {
      Get.snackbar(
        'Error',
        'Cannot divide by zero',
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(milliseconds: 2500), // 2.5 segundos
      );
    }
  }

  void decrement() {
    count--;
    _showSnackbar();
  }

  void toggleTheme() {
    isDarkMode.value = !isDarkMode.value;
    Get.changeTheme(isDarkMode.value ? ThemeData.dark() : ThemeData.light());
  }

  void changeLanguage() {
    Get.locale = Get.locale?.languageCode == 'en' 
        ? const Locale('es', 'ES') 
        : const Locale('en', 'US');
  }

  void _showSnackbar() async {
    await Future.delayed(const Duration(milliseconds: 500));
    Get.snackbar(
      'Counter Updated',
      'Current value is ${count.value}',
      snackPosition: SnackPosition.TOP,
      duration: const Duration(milliseconds: 2500), // 2.5 segundos
    );
  }

  @override
  void onInit() {
    super.onInit();
    ever(count, (value) {
      if (value >= 10) {
        Get.dialog(
          AlertDialog(
            title: const Text('Achievement!'),
            content: const Text('You\'ve reached 10 counts!'),
            actions: [
              TextButton(
                onPressed: () => Get.back(),
                child: const Text('OK'),
              ),
            ],
          ),
        );
      }
    });
  }
}