import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_task/core/helpers/spacing.dart';
import 'package:store_task/core/strings/strings_manger.dart';
import 'package:store_task/core/theming/colors.dart';
import 'package:store_task/core/theming/styles.dart';
import 'package:store_task/features/products/ui/widgets/product_about.dart';
import 'package:store_task/features/products/ui/widgets/product_data.dart';
import 'package:store_task/features/products/ui/widgets/product_recommended.dart';
import 'package:store_task/features/products/ui/widgets/product_reviews.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.white,
      appBar: AppBar(
        title: Text(
          StringsManger.productDetails,
          style: TextStyles.font20BlackMedium,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: ColorsManager.white,
        leading: const Icon(
          Icons.arrow_back_ios_new,
          color: ColorsManager.black,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProductData(),
                verticalSpace(12),
                const ProductAbout(),
                verticalSpace(20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(),
                    ProductReviews(),
                  ],
                ),
                verticalSpace(20),
                const ProductRecommended(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
