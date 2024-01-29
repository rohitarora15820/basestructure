import 'package:flutter/material.dart';
import 'package:tstore/common/widgets/custom_appbar/appbar.dart';
import 'package:tstore/common/widgets/images/t_roundec_images.dart';
import 'package:tstore/common/widgets/products/products_cards/product_card_horizontal.dart';
import 'package:tstore/common/widgets/text/section_heading.dart';
import 'package:tstore/utils/constants/image_strings.dart';
import 'package:tstore/utils/constants/sizes.dart';

class SubCategoryScreen extends StatelessWidget {
  const SubCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: TAppBar(
        title: Text('Sports shirts'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            /// Banner
            TRoundedImage(imageUrl: TImages.promoBanner1,
            width: double.infinity,
              height: null,
              applyImageRadius: true,
            ),
            SizedBox(height: TSizes.spaceBtwSections,),


            /// Sub-Categories
            Column(
              children: [
                /// Heading
                TSectionHeading(title: "Sports shirts", onPressed: (){},),
                SizedBox(height: TSizes.spaceBtwItems/2,),

                SizedBox(
                  height: 120,
                  child: ListView.separated(
                    itemCount: 2,
                   scrollDirection: Axis.horizontal,
                   separatorBuilder: (context, index) => SizedBox(width: TSizes.spaceBtwItems,),
                    itemBuilder: (context, index) => TProductCardHorizontal(),

                  ),
                )
              ],
            )
            
          ],
        ),
        ),
      ),
    );
  }
}
