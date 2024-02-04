import 'package:flutter/material.dart';
import 'package:store_task/core/theming/colors.dart';

class ProductRating extends StatefulWidget {
  const ProductRating({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ProductRatingState createState() => _ProductRatingState();
}

class _ProductRatingState extends State<ProductRating> {
  int _rating = 3;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              _rating = index + 1;
            });
          },
          child: Icon(
            index < _rating ? Icons.star : Icons.star_border,
            color: ColorsManager.yellow,
            size: 16.0,
          ),
        );
      }),
    );
  }
}
