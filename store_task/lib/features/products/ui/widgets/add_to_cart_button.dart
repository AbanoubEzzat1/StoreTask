import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_task/core/theming/colors.dart';
import 'package:store_task/core/theming/styles.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({
    super.key,
    required this.text,
    required this.onTap,
  });
  final String text;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(top: 25.h),
        child: Container(
          decoration: BoxDecoration(
              color: ColorsManager.darkBlue,
              borderRadius: BorderRadius.circular(8.r)),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 10.0.h),
            child: Text(
              text,
              style: TextStyles.font14WhiteRegular,
            ),
          ),
        ),
      ),
    );
  }
}
