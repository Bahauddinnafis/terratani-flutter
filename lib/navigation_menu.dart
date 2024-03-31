import 'dart:ffi';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:terratani/screen/camera_screen.dart';
import 'package:terratani/screen/history_screen.dart';
import 'package:terratani/screen/home_screen.dart';
import 'package:terratani/screen/profile_screen.dart';
import 'package:terratani/screen/shop_screen.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      bottomNavigationBar: Obx(() => NavigationBar(
              height: 80,
              elevation: 0,
              selectedIndex: controller.selectedIndex.value,
              onDestinationSelected: (index) =>
                  controller.selectedIndex.value = index,
              destinations: const [
                NavigationDestination(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                NavigationDestination(icon: Icon(Icons.shop), label: 'Shop'),
                NavigationDestination(
                    icon: Icon(Icons.camera), label: 'Camera'),
                NavigationDestination(
                    icon: Icon(Icons.history), label: 'History'),
                NavigationDestination(
                    icon: Icon(Icons.person), label: 'Profile')
              ])),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    HomeScreen(),
    const ShopScreen(),
    const CameraScreen(),
    const HistoryScreen(),
    const ProfileScreen()
  ];
}
