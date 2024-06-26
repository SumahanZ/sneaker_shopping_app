import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewShoes extends StatelessWidget {
  final String imageUrl;
  const NewShoes({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(16.h),
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.white,
                spreadRadius: 1,
                blurRadius: 0.8,
                offset: Offset(0, 1),
              ),
            ]),
        height: 100.h,
        width: 104.w,
        child: Image.network(imageUrl));
  }
}
