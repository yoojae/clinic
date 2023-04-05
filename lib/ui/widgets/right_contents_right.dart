import 'package:flutter/material.dart';
import 'package:hospital/global_asset/global_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RightContentsRight extends StatelessWidget {
  const RightContentsRight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.w,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [GlobalStyle.green, Color(
                0xff0ebfd2)],
            begin: Alignment.centerLeft,
            end: Alignment.bottomRight
        ),
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('더 나은 결과를 얻으려면 Apple Watch를 연결하세요!',
              style: TextStyle(
                color: GlobalStyle.white,
                fontSize: 25.sp,
              ),
            ),
            Container(
              width: 100.h,
              height: 100.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.r),
              ),
              child: Center(
                child: Icon(Icons.wifi_outlined, color: GlobalStyle.green, size: 35.sp,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
