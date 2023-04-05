import 'package:flutter/material.dart';
import 'package:hospital/global_asset/global_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital/ui/page/home_page.dart';

class RightContentsHeader extends StatelessWidget {
  const RightContentsHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30,),
      padding: EdgeInsets.only(left: 15, right: 20,),
      decoration: BoxDecoration(
          color: GlobalStyle.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: shadow
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 600.w,
            height: 70.w,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: GlobalStyle.light_green,
              borderRadius: BorderRadius.circular(30.r),
            ),
            child:
            TextField(
              cursorColor: Colors.black,
              cursorWidth: 1,
              decoration:
              InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.search),
                  hintText: '검색어를 입력하세요...',
                  helperStyle: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  )
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
                width: 20,
              ),
              Icon(Icons.crop_free_rounded, color: GlobalStyle.green, size: 40.sp,),
              Container(
                width: 20,
              ),
              Icon(Icons.notifications, color: GlobalStyle.green, size: 40.sp,),
              Container(
                width: 20,
              ),
              Icon(Icons.mail_rounded, color: GlobalStyle.green, size: 40.sp,),
              Container(
                width: 20,
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
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('김민지',
                        style: TextStyle(
                          fontSize: 29.sp,
                        ),
                      ),
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
