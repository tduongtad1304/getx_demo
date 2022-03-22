// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  final counter = 0.obs;

  increment() {
    counter.value++;
    print('Counter: ${counter.value}');
    Get.snackbar('GetX Snackbar', 'Increase to ${counter.value} !',
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.white,
        duration: const Duration(milliseconds: 600));
  }

  decrement() {
    counter.value--;
    print('Counter: ${counter.value}');
    Get.snackbar('GetX Snackbar', 'Decrease to ${counter.value} !',
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.white,
        duration: const Duration(milliseconds: 600));
  }

  reset() {
    Get.snackbar('GetX Snackbar', 'Reset to 0 !',
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.white,
        duration: const Duration(milliseconds: 600));
    return counter.value = 0;
  }
}
