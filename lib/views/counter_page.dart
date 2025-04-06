import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/counter_controller.dart';
import 'package:icons_plus/icons_plus.dart';

class CounterPage extends StatelessWidget {
  final CounterController controller = Get.find<CounterController>();

  CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('counter_title'.tr),
        actions: [
          IconButton(
            icon: const Icon(Icons.language),
            onPressed: controller.changeLanguage,
          ),
          IconButton(
            icon: const Icon(Icons.brightness_6),
            onPressed: controller.toggleTheme,
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'push_message'.tr,
            ),
            Obx(
              () => Text(
                '${controller.count}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: controller.increment,
            tooltip: 'increment'.tr,
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: controller.decrement,
            tooltip: 'decrement'.tr,
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: controller.resetToZero,
            tooltip: 'reset'.tr,
            child: const Icon(Icons.restart_alt),
          ),
          FloatingActionButton(
            onPressed: controller.multiply,
            tooltip: 'multiply'.tr,
            child: Icon(Icons.close),
          ),
          FloatingActionButton(
            onPressed: controller.divide,
            tooltip: 'divide'.tr,
            child: Icon(LineAwesome.divide_solid),
          ),
        ],
      ),
    );
  }
}