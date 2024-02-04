import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_task/core/helpers/spacing.dart';
import 'package:store_task/core/strings/assets_manger.dart';
import 'package:store_task/core/theming/colors.dart';
import 'package:store_task/core/theming/styles.dart';
import 'package:store_task/features/products/ui/widgets/product_ratting.dart';

class ProductData extends StatefulWidget {
  ProductData({super.key});

  @override
  State<ProductData> createState() => _ProductDataState();
}

class _ProductDataState extends State<ProductData> {
  int productWhight = 1;
  //increment Whight
  void incrementWhight() {
    setState(() {
      productWhight++;
    });
  }

  //decrement Whight
  void decrementWhight() {
    setState(() {
      if (productWhight > 0) {
        productWhight--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset(AssetsManger.tomato),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              productNameAndPrice(),
              productWeight(),
            ],
          ),
        ],
      ),
    );
  }

  Widget productNameAndPrice() {
    return Column(
      children: [
        Text(
          'Tomato',
          style: TextStyles.font16BlackMedium,
        ),
        verticalSpace(8),
        Text(
          '6 LE',
          style: TextStyles.font14RedSemiBold,
        ),
      ],
    );
  }

  Widget productWeight() {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: decrementWhight,
            icon: const Icon(Icons.remove_circle_outline,
                color: ColorsManager.red),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.0.w),
            child: Text(
              '$productWhight kg',
              style: TextStyles.font16BlackMedium,
            ),
          ),
          IconButton(
            onPressed: incrementWhight,
            icon:
                const Icon(Icons.add_circle_rounded, color: ColorsManager.red),
          ),
        ],
      ),
      verticalSpace(8),
      const ProductRating(),
    ]);
  }
}
