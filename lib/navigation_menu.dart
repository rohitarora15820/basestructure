import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tstore/features/shop/view/widgets/home.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  NavigationMenu({super.key});


  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark=THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          backgroundColor: dark?TColors.black:TColors.white,
          indicatorColor: dark?TColors.white.withOpacity(0.1):TColors.black.withOpacity(0.1),
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Shop'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'WishList'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    HomeScreen(),
    Container(color: Colors.green),
    Container(color: Colors.orange),
    Container(color: Colors.red),
  ];
}
