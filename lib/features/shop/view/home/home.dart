import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tstore/common/widgets/products/products_cards/product_card_vertical.dart';
import 'package:tstore/features/shop/view/all_products/all_products.dart';
import 'package:tstore/features/shop/view/home/widgets/home_appbar.dart';
import 'package:tstore/features/shop/view/home/widgets/home_categories.dart';

// import 'package:tstore/features/shop/view/widgets/home_categories.dart';
import 'package:tstore/features/shop/view/home/widgets/promo_slider.dart';
import 'package:tstore/utils/constants/sizes.dart';
import '../../../../common/layout/t_grid_layout.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/text/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  //Appbar
                  THomeAppBar(),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  //Search Bar
                  TSearchContainer(
                    txt: "Search in Store",
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  //Categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        //Heading Section
                        TSectionHeading(
                          title: "Product Categories",
                          showActionButton: false,
                          textColor: TColors.white,
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),

                        //ScrollableCategoriesSection
                        THomeCategories()
                      ],
                    ),
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  )
                ],
              ),
            ),

            /// Body section
            Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  children: [
                    const TPromoSlider(
                      banners: [
                        TImages.promoBanner1,
                        TImages.promoBanner2,
                        TImages.promoBanner3,
                      ],
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwSections,
                    ),
                    //Heading Section
                    TSectionHeading(
                      title: "Popular Products",
                      onPressed: () {
                        Get.to(() => const AllProductsScreen());
                      },
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                    TGridLayout(
                      itemCount: 2,
                      itemBuilder: (p0, p1) => const TProductCardVertical(),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
