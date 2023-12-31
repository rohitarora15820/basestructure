import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tstore/features/shop/view/widgets/home_appbar.dart';
import '../../../common/widgets/custom_appbar/appbar.dart';
import '../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../common/widgets/products/cart/cart_menu_icon.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/text_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  //Appbar
                  THomeAppBar()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

