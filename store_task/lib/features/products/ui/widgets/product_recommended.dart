import 'package:flutter/material.dart';
import 'package:store_task/core/helpers/spacing.dart';
import 'package:store_task/core/strings/assets_manger.dart';
import 'package:store_task/core/theming/styles.dart';
import 'package:store_task/features/products/logic/models/recommended_product_model.dart';
import 'package:store_task/features/products/ui/widgets/recommended_prodects_card.dart';

class ProductRecommended extends StatelessWidget {
  const ProductRecommended({super.key});

  @override
  Widget build(BuildContext context) {
    final List recommendedProducts = [
      RecommendedProdut(
        image: AssetsManger.oneTomato,
        name: "Tomato",
        price: "LE 6/kg",
      ),
      RecommendedProdut(
        image: AssetsManger.product_2,
        name: "Garlic",
        price: "LE 8/kg",
      ),
      RecommendedProdut(
        image: AssetsManger.product_3,
        name: "Eggplant",
        price: "LE 4/kg",
      ),
      RecommendedProdut(
        image: AssetsManger.product_4,
        name: "Broccoli",
        price: "LE 10/kg",
      ),
    ];
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        "Recommended",
        style: TextStyles.font16BlackSemiBold,
      ),
      verticalSpace(10),
      GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: recommendedProducts.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) => RecommendedProductsCard(
          product: recommendedProducts[index],
        ),
      ),
    ]);
  }
}
