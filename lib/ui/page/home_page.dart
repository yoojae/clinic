import 'package:flutter/material.dart';
import 'package:hospital/global_asset/global_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital/ui/widgets/right_contents_header.dart';
import 'package:hospital/ui/widgets/right_contents_right.dart';
import 'package:hospital/ui/widgets/left_contents.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalStyle.green,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Flexible(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(30.w),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 88.w,
                        height: 110.w,
                        child: Image.asset('images/png/logo.png'),
                      ),
                      Container(width: 26.w,),
                      Text('XRay',
                        style: TextStyle(
                          fontSize: 58.sp,
                          color: GlobalStyle.white
                        ),
                      )
                    ],
                  ),
                  Container(height: 64.h,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 22.w),
                        child: Text('대시보드',
                          style: TextStyle(
                            color: GlobalStyle.white,
                            fontSize: 28.sp,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                      Container(height: 28.h,),
                      Column(
                        children: [
                          Menu(icon: Icons.local_hospital,
                              menu: '의료진 대시보드',
                              boxColor: Colors.transparent,
                              iconTextColor: GlobalStyle.white),
                          Menu(icon: Icons.house,
                              menu: '병원 대시보드1',
                              boxColor: Colors.transparent,
                              iconTextColor: GlobalStyle.white),
                          Menu(icon: Icons.account_balance_wallet_rounded,
                              menu: '병원 대시보드2',
                              boxColor: Colors.transparent,
                              iconTextColor: GlobalStyle.white),
                          Menu(icon: Icons.people_alt,
                              menu: '환자 대시보드',
                              boxColor: GlobalStyle.white,
                              iconTextColor: GlobalStyle.green),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),),
          Flexible(
            flex: 9,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30.w,),
              height: double.infinity,
              decoration: BoxDecoration(
                color: GlobalStyle.bg,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.r),
                  bottomLeft: Radius.circular(25.r),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // -------------------------Header-----------------------------
                    const RightContentsHeader(),
                    Container(
                      height: 1620.w,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          // -------------------------Left Box-----------------------------
                          LeftContents(),

                          // -------------------------Right Box-----------------------------
                          Flexible(
                            flex: 2,
                            child: RightContentsRight(),
                          ),
                        ],
                      ),
                    ),

                    // -------------------------Footer-----------------------------
                    Container(
                      margin: EdgeInsets.all(60.w),
                      padding: EdgeInsets.symmetric(horizontal: 60.w),
                      height: 110.w,
                      decoration: BoxDecoration(
                        color: GlobalStyle.white,
                        borderRadius: BorderRadius.circular(55.r),
                        boxShadow: shadow
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: Text('Privacy Policy',
                                  style: TextStyle(
                                    color: GlobalStyle.light_dark,
                                    fontSize: 27.sp
                                  ),
                                ),
                                style: TextButtonStyle
                              ),
                              Container(width: 20.w,),
                              TextButton(
                                onPressed: () {},
                                child: Text('Terms of Use',
                                  style: TextStyle(
                                      color: GlobalStyle.light_dark,
                                      fontSize: 27.sp
                                  ),
                                ),
                                style: TextButtonStyle,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text('Copyright 2020 ',
                                style: TextStyle(
                                    color: GlobalStyle.gray,
                                    fontSize: 27.sp
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text('XRay',
                                  style: TextStyle(
                                    color: GlobalStyle.green,
                                      fontSize: 27.sp
                                  ),
                                ),
                                style: TextButtonStyle,
                              ),
                              Text(' All Rights Reserved.',
                                style: TextStyle(
                                    color: GlobalStyle.gray,
                                    fontSize: 27.sp
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}




class Menu extends StatelessWidget {
  final IconData icon;
  final String menu;
  final Color boxColor;
  final Color iconTextColor;

  const Menu({
    super.key,
    required this.icon,
    required this.menu,
    required this.boxColor,
    required this.iconTextColor
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 22.w),
      height: 100.h,
      margin: EdgeInsets.symmetric(vertical: 10.w),
      decoration: BoxDecoration(
        color: boxColor,
        borderRadius: BorderRadius.circular(28.r)
      ),
      child: Row(
        children: [
          Icon(icon,
            color: iconTextColor,
            size: 38.sp,
          ),
          Container(width: 16.w,),
          Text(menu,
            style: TextStyle(
              color: iconTextColor,
              fontSize: 28.sp
            ),
          )
        ],
      ),
    );
  }
}



