import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../icons/t_circular_icon.dart';

class TProductQuantityWithAddAndRemove extends StatelessWidget {
  const TProductQuantityWithAddAndRemove({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TCircularIcon(
          dark: THelperFunctions.isDarkMode(context),
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: TSizes.md,
          color: THelperFunctions.isDarkMode(context)? TColors.white:TColors.black,
          bgColor : THelperFunctions.isDarkMode(context)? TColors.darkerGrey:TColors.light,
        ),
        SizedBox(width: TSizes.spaceBtwItems),
        Text('2',style: Theme.of(context).textTheme.titleSmall,),
        SizedBox(width: TSizes.spaceBtwItems),
        TCircularIcon(
          dark: THelperFunctions.isDarkMode(context),
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: TSizes.md,
          color:  TColors.white,
          bgColor :TColors.primary,
        ),
      ],
    );
  }
}
