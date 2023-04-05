import 'package:flutter/material.dart';
import 'package:hospital/global_asset/global_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class RightContentsHeader extends StatelessWidget {
  const RightContentsHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 40.w, horizontal: 60.w,),
      padding: EdgeInsets.symmetric(vertical: 30.w, horizontal: 40.w),
      decoration: BoxDecoration(
          color: GlobalStyle.white,
          borderRadius: BorderRadius.circular(60.r),
          // boxShadow: shadow
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 600.w,
            height: 70.w,
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            decoration: BoxDecoration(
              color: GlobalStyle.light_green,
              borderRadius: BorderRadius.circular(18.r),
            ),
            child:
            Center(
              child: TextField(
                cursorColor: Colors.black,
                cursorWidth: 1,
                decoration:
                InputDecoration(
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.search,
                      size: 38.sp,
                    ),
                    hintText: '검색어를 입력해주세요...',
                    hintStyle: TextStyle(
                      fontSize: 26.sp,
                      fontWeight: FontWeight.w400,
                    )
                ),
              ),
            ),
          ),
          Row(
            children: [
              Text('English',
                style: TextStyle(
                  color: GlobalStyle.green,
                  fontSize: 25.sp,
                ),
              ),
              Icon(Icons.arrow_drop_down_outlined, color: GlobalStyle.green, size: 40.sp,),
              Container(
                width: 40.w,
              ),
              Icon(Icons.crop_free_rounded, color: GlobalStyle.green, size: 40.sp,),
              Container(
                width: 40.w,
              ),
              Icon(Icons.notifications, color: GlobalStyle.green, size: 40.sp,),
              Container(
                width: 40.w,
              ),
              Icon(Icons.mail_rounded, color: GlobalStyle.green, size: 40.sp,),
              Container(
                width: 40.w,
              ),
              Row(
                children: [
                  Container(
                    clipBehavior: Clip.hardEdge,
                    width: 100.w,
                    height: 100.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset('images/png/1.png'),
                  ),
                  Container(
                    width: 20.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('김민지',
                        style: TextStyle(
                            fontSize: 29.sp,
                            fontWeight: FontWeight.w500,
                            color: GlobalStyle.dark
                        ),
                      ),
                      Container(height: 10.w,),
                      Text('사용자',
                        style: TextStyle(
                          fontSize: 20.sp,
                          color: GlobalStyle.green,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
