import 'package:flutter/material.dart';
import 'package:hospital/global_asset/global_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class RightContentsHeader extends StatelessWidget {
  const RightContentsHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30.w,),
      padding: EdgeInsets.symmetric(vertical: 12.w, horizontal: 20.w),
      decoration: BoxDecoration(
          color: GlobalStyle.white,
          borderRadius: BorderRadius.circular(30.r),
          boxShadow: shadow
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 600.w,
            height: 40.w,
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            decoration: BoxDecoration(
              color: GlobalStyle.light_green,
              borderRadius: BorderRadius.circular(12.r),
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
                      size: 32.sp,
                    ),
                    hintText: '검색어를 입력해주세요...',
                    hintStyle: TextStyle(
                      fontSize: 16.sp,
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
                  fontSize: 18.sp,
                ),
              ),
              Icon(Icons.arrow_drop_down_outlined, color: GlobalStyle.green, size: 22.sp,),
              Container(
                width: 38.w,
              ),
              Icon(Icons.crop_free_rounded, color: GlobalStyle.green, size: 26.sp,),
              Container(
                width: 38.w,
              ),
              Icon(Icons.notifications, color: GlobalStyle.green, size: 26.sp,),
              Container(
                width: 38.w,
              ),
              Icon(Icons.mail_rounded, color: GlobalStyle.green, size: 26.sp,),
              Container(
                width: 38.w,
              ),
              Row(
                children: [
                  Container(
                    clipBehavior: Clip.hardEdge,
                    width: 50.w,
                    height: 50.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset('images/png/1.png'),
                  ),
                  Container(
                    width: 8.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('김민지',
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: GlobalStyle.dark
                        ),
                      ),
                      Container(height: 2.w,),
                      Text('사용자',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: GlobalStyle.green,
                        ),
                      ),
                    ],
                  ),
                  Container(width: 5.w,),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
