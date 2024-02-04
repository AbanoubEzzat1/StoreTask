import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_task/features/products/ui/product_details.dart';

class StoreTask extends StatelessWidget {
  const StoreTask({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Store App Task',
        theme: ThemeData(
            // primaryColor: ColorsManager.mainBlue,
            // scaffoldBackgroundColor: Colors.white,
            ),
        home: const ProductDetails(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
