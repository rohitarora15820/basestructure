import 'package:flutter/material.dart';
import 'package:tstore/common/layout/t_grid_layout.dart';
import 'package:tstore/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:tstore/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:tstore/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:tstore/common/widgets/text/section_heading.dart';
import 'package:tstore/common/widgets/text/t_brand_title_text_with_verfied_icon.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/constants/enums.dart';
import 'package:tstore/utils/constants/image_strings.dart';
import 'package:tstore/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/custom_appbar/appbar.dart';
import '../../../../common/widgets/images/t_circular_image.dart';
import '../../../../utils/constants/sizes.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          "Store",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          TCartCounterIcon(
            onPressed: () {},
          )
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: true,
            floating: true,
            backgroundColor: THelperFunctions.isDarkMode(context)
                ? TColors.black
                : TColors.white,
            expandedHeight: 440,
            flexibleSpace: Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  /// Search Bar

                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),

                  TSearchContainer(
                    txt: 'Search in Store',
                    showBackground: false,
                    padding: EdgeInsets.zero,
                    showBorder: true,
                  ),

                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  /// Feature Brand
                  TSectionHeading(
                    title: 'Featured Brand',
                    showActionButton: true,
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems / 1.5,
                  ),

                 TGridLayout(
                   mainAxisExtent: 80,
                   itemCount: 4, itemBuilder: (p0, p1) =>  GestureDetector(
                   onTap: () {},
                   child: TRoundedContainer(
                     padding: EdgeInsets.all(TSizes.sm),
                     showBorder: true,
                     bgColor: Colors.transparent,
                     child: Row(
                       children: [
                         /// Icon

                         Flexible(
                           child: TCircularImage(
                             image: TImages.clothIcon,
                             bgColor: Colors.transparent,
                             overlayColor: THelperFunctions.isDarkMode(context)
                                 ? TColors.white
                                 : TColors.black,
                           ),
                         ),
                         SizedBox(
                           width: TSizes.spaceBtwItems / 2,
                         ),

                         /// Text
                         Flexible(
                           child: Column(
                             mainAxisSize: MainAxisSize.min,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               TBrandTitleWithVerifyIcon(
                                 title: 'Nike',
                                 brandTextSizes: TextSizes.large,
                               ),
                               Text(
                                 '256 products',
                                 overflow: TextOverflow.ellipsis,
                                 style:
                                 Theme.of(context).textTheme.labelMedium,
                               )
                             ],
                           ),
                         ),
                       ],
                     ),
                   ),
                 ),)


                ],
              ),
            ),
          )
        ],
        body: Container(),
      ),
    );
  }
}
