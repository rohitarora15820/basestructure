import 'package:flutter/material.dart';
import 'package:tstore/common/widgets/custom_appbar/appbar.dart';
import 'package:tstore/features/shop/view/order/widgets/order_list.dart';
import 'package:tstore/utils/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'My Orders',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: TOrderListScreen(),
      ),
    );
  }
}
