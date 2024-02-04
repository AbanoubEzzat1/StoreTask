import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_task/core/helpers/spacing.dart';
import 'package:store_task/core/strings/strings_manger.dart';
import 'package:store_task/core/theming/colors.dart';
import 'package:store_task/core/theming/styles.dart';
import 'package:store_task/features/products/logic/models/recommended_product_model.dart';
import 'package:store_task/features/products/ui/widgets/add_to_cart_button.dart';
import 'package:store_task/features/products/ui/widgets/product_ratting.dart';

class RecommendedProductsCard extends StatelessWidget {
  final RecommendedProdut product;
  const RecommendedProductsCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorsManager.white,
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                product.image,
                height: 60.h,
                width: 52.1.w,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite,
                  color: ColorsManager.red,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(product.name, style: TextStyles.font14BlackRegular),
                Text(product.price, style: TextStyles.font14BlackRegular),
              ],
            ),
          ),
          verticalSpace(5),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: const ProductRating(),
          ),
          Center(
            child: AddToCartButton(
              text: StringsManger.addToCart,
              onTap: () {},
            ),
          )
        ]),
      ),
    );
  }
}
