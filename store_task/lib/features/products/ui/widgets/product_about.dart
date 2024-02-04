import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:store_task/core/helpers/spacing.dart';
import 'package:store_task/core/strings/strings_manger.dart';
import 'package:store_task/core/theming/colors.dart';
import 'package:store_task/core/theming/styles.dart';

class ProductAbout extends StatelessWidget {
  const ProductAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        StringsManger.productAbout,
        style: TextStyles.font14BlackSemiBold,
      ),
      verticalSpace(10),
      ReadMoreText(
        'Tomatoes health benefits includes preserving heart health, reducing cancer risk, helping manage symptoms of an enlarged prostate',
        trimLines: 2,
        style: TextStyles.font14BlackMedium,
        colorClickableText: ColorsManager.black,
        trimMode: TrimMode.Line,
        trimCollapsedText: StringsManger.readMore,
        trimExpandedText: StringsManger.readLess,
      ),
    ]);
  }
}
