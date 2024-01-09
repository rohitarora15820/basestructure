import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tstore/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:tstore/features/shop/view/widgets/home_appbar.dart';
import 'package:tstore/features/shop/view/widgets/home_categories.dart';
import 'package:tstore/features/shop/view/widgets/promo_slider.dart';
import 'package:tstore/utils/constants/sizes.dart';
import 'package:tstore/utils/helpers/helper_functions.dart';
import '../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../common/widgets/image_text_widget/vertical_image_text.dart';
import '../../../common/widgets/images/t_roundec_images.dart';
import '../../../common/widgets/text/section_heading.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';

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
                    padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        //Heading Section
                        const TSectionHeading(
                          title: "Product Categories",
                          showActionButton: false,
                          textColor: TColors.white,
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),

                        //ScrollableCategoriesSection
                        THomeCategories()
                      ],
                    ),
                  )
                ],
              ),
            ),

            /// Body section
            Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: TPromoSlider(
                  banners: [
                    TImages.promoBanner1,
                    TImages.promoBanner2,
                    TImages.promoBanner3,
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
