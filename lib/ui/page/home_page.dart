import 'package:flutter/material.dart';
import 'package:hospital/global_asset/global_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 40.w, horizontal: 60.w,),
                      padding: EdgeInsets.symmetric(vertical: 30.w, horizontal: 40.w),
                      decoration: BoxDecoration(
                        color: GlobalStyle.white,
                        borderRadius: BorderRadius.circular(60.r),
                        boxShadow: shadow
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
                                    hintText: 'Type here to search...',
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
                                      Text('Bini Jets',
                                        style: TextStyle(
                                          fontSize: 29.sp,
                                          fontWeight: FontWeight.w500,
                                          color: GlobalStyle.dark
                                        ),
                                      ),
                                      Container(height: 10.w,),
                                      Text('Available',
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
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 60.w,),
                      child: Container(
                        height: 1620.w,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            // -------------------------Left Box-----------------------------
                            Flexible(
                              flex: 1,
                              child: Padding(
                                padding: EdgeInsets.only(right: 40.w,),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    // -------------------------Profile-----------------------------
                                    Stack(
                                      children: [
                                        Positioned(
                                          child: Container(
                                            padding: EdgeInsets.fromLTRB(0, 135.w, 0, 40.w),
                                            margin: EdgeInsets.only(top: 115.w),
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color: GlobalStyle.white,
                                              borderRadius: BorderRadius.circular(50.r),
                                              boxShadow: shadow
                                            ),
                                            child: Column(
                                              children: [
                                                Text('김민지',
                                                  style: TextStyle(
                                                      color: GlobalStyle.dark,
                                                      fontSize: 37.sp,
                                                    fontWeight: FontWeight.w600
                                                  ),
                                                ),
                                                Container(height: 16.w,),
                                                Text('27세, 부산시 해운대구',
                                                  style: TextStyle(
                                                      color: GlobalStyle.gray,
                                                    fontSize: 27.sp,
                                                  ),
                                                ),
                                                Container(height: 64.w,),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    ProfileFlex(top: '체중', num: '60', unit: 'kg', color: GlobalStyle.dark,),
                                                    Container(
                                                      width: 1,
                                                      height: 100.w,
                                                      color: GlobalStyle.light_gray,
                                                    ),
                                                    ProfileFlex(top: '키', num: '170', unit: 'cm', color: GlobalStyle.dark,),
                                                    Container(
                                                      width: 1,
                                                      height: 100.w,
                                                      color: GlobalStyle.light_gray,
                                                    ),
                                                    ProfileFlex(top: '목표', num: '55', unit: 'kg', color: GlobalStyle.yellow,),
                                                  ],
                                                ),
                                                Container(height: 32.w,)
                                              ],
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 0,
                                          right: 0,
                                          child: Container(
                                            width: 230.w,
                                            height: 230.w,
                                            child: Image.asset('images/png/11.png'),
                                          ),
                                        ),
                                      ],
                                    ),

                                    // -------------------------MyGoal-----------------------------
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 48.w,
                                        horizontal: 48.w
                                      ),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: GlobalStyle.white,
                                        borderRadius: BorderRadius.circular(50.r),
                                        boxShadow: shadow
                                      ),
                                      child: Column(
                                        children: [
                                          MyGoal(type: '걸음', progress: '4532', unit: '걸음', goal: '6500'),
                                          Container(height: 60.w,),
                                          Container(
                                            height: 1,
                                            color: GlobalStyle.light_gray,
                                          ),
                                          Container(height: 60.w,),
                                          MyGoal(type: '칼로리 소모', progress: '325', unit: 'kcal', goal: '800'),
                                          Container(height: 32.w,)
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            // -------------------------Right Box-----------------------------
                            Flexible(
                              flex: 2,
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 48.w, horizontal: 48.w),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50.r),
                                  boxShadow: shadow
                                ),
                                child: Column(
                                  children: [
                                    Container(
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
                                        padding: EdgeInsets.only(left: 40.w, right: 20.w),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('Advice! Connect your Apple Watch for better results.',
                                              style: TextStyle(
                                                color: GlobalStyle.white,
                                                fontSize: 28.sp,
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
                                    ),
                                    Container(
                                      height: 70.w,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Text('Popular Training',
                                            style: TextStyle(
                                              color: GlobalStyle.green,
                                              fontSize: 36.sp,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 50.w,
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Training(title: 'Power Training', subtitle: '395 kcal / h', image: Image.asset('images/png/34.png',),),
                                            Training(title: 'Yoga Training', subtitle: '395 kcal / h', image: Image.asset('images/png/35.png'),),
                                            Training(title: 'Stretching', subtitle: '395 kcal / h', image: Image.asset('images/png/36.png'),),
                                          ],
                                        ),
                                        Container(
                                          height: 70.w,
                                        ),
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Flexible(
                                              flex: 3,
                                              fit: FlexFit.tight,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text('Activity Statistic',
                                                    style: TextStyle(
                                                      color: GlobalStyle.green,
                                                      fontSize: 36.sp,
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 50.w,
                                                  ),
                                                  Container(
                                                    width: 600.w,
                                                    height: 600.w,
                                                    color: Colors.grey.shade100,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(width: 40.w,),
                                            Flexible(
                                              flex: 2,
                                              child: Column(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text('My Training',
                                                        style: TextStyle(
                                                          color: GlobalStyle.green,
                                                          fontSize: 36.sp,
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 62.w,
                                                        height: 56.w,
                                                        decoration: BoxDecoration(
                                                          color: GlobalStyle.light_green,
                                                          borderRadius: BorderRadius.circular(16.r),
                                                        ),
                                                        child: Center(
                                                          child: Icon(Icons.add, color: GlobalStyle.green, size: 30.sp,),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Container(
                                                    height: 50.w,
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius: BorderRadius.circular(25.r),
                                                      boxShadow: [BoxShadow(
                                                        blurRadius: 5.0,
                                                        color: Colors.grey.shade100,
                                                        offset: Offset(2, 5),
                                                      )],
                                                    ),
                                                    child: Column(
                                                      children: [
                                                        Padding(
                                                          padding: EdgeInsets.symmetric(vertical: 30.w, horizontal: 30.w,),
                                                          child: Row(
                                                            children: [
                                                              Flexible(
                                                                flex: 1,
                                                                fit: FlexFit.tight,
                                                                child: Text('Training', style: TextStyle(
                                                                  fontSize: 26.sp,
                                                                ),),
                                                              ),
                                                              Flexible(
                                                                flex: 1,
                                                                child: Text('TRX Cardio', style: TextStyle(
                                                                  fontSize: 26.sp,
                                                                ),),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          height: 1,
                                                          color: Colors.grey.shade200,
                                                        ),
                                                        Padding(
                                                          padding: EdgeInsets.symmetric(vertical: 30.w, horizontal: 30.w,),
                                                          child: Row(
                                                            children: [
                                                              Flexible(
                                                                flex: 1,
                                                                fit: FlexFit.tight,
                                                                child: Text('Burend', style: TextStyle(
                                                                  fontSize: 26.sp,
                                                                ),),
                                                              ),
                                                              Flexible(
                                                                flex: 1,
                                                                child: Text('350 Kcal', style: TextStyle(
                                                                  fontSize: 26.sp,
                                                                ),),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: EdgeInsets.symmetric(vertical: 30.w, horizontal: 30.w,),
                                                          child: Row(
                                                            children: [
                                                              Flexible(
                                                                flex: 1,
                                                                fit: FlexFit.tight,
                                                                child: Text('Spend', style: TextStyle(
                                                                  fontSize: 26.sp,
                                                                ),),
                                                              ),
                                                              Flexible(
                                                                flex: 1,
                                                                child: Text('1hr 45m', style: TextStyle(
                                                                  fontSize: 26.sp,
                                                                ),),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 40.w,
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius: BorderRadius.circular(25.r),
                                                      boxShadow: [BoxShadow(
                                                        blurRadius: 5.0,
                                                        color: Colors.grey.shade100,
                                                        offset: Offset(2, 5),
                                                      )],
                                                    ),
                                                    child: Column(
                                                      children: [
                                                        Padding(
                                                          padding: EdgeInsets.symmetric(vertical: 30.w, horizontal: 30.w,),
                                                          child: Row(
                                                            children: [
                                                              Flexible(
                                                                flex: 1,
                                                                fit: FlexFit.tight,
                                                                child: Text('Training', style: TextStyle(
                                                                  fontSize: 26.sp,
                                                                ),),
                                                              ),
                                                              Flexible(
                                                                flex: 1,
                                                                child: Text('Stretching', style: TextStyle(
                                                                  fontSize: 26.sp,
                                                                ),),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          height: 2,
                                                          color: Colors.grey.shade200,
                                                        ),
                                                        Padding(
                                                          padding: EdgeInsets.symmetric(vertical: 30.w, horizontal: 30.w,),
                                                          child: Row(
                                                            children: [
                                                              Flexible(
                                                                flex: 1,
                                                                fit: FlexFit.tight,
                                                                child: Text('Burend', style: TextStyle(
                                                                  fontSize: 26.sp,
                                                                ),),
                                                              ),
                                                              Flexible(
                                                                flex: 1,
                                                                child: Text('180 Kcal', style: TextStyle(
                                                                  fontSize: 26.sp,
                                                                ),),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: EdgeInsets.symmetric(vertical: 30.w, horizontal: 30.w,),
                                                          child: Row(
                                                            children: [
                                                              Flexible(
                                                                flex: 1,
                                                                fit: FlexFit.tight,
                                                                child: Text('Spend', style: TextStyle(
                                                                  fontSize: 26.sp,
                                                                ),),
                                                              ),
                                                              Flexible(
                                                                flex: 1,
                                                                child: Text('30m', style: TextStyle(
                                                                  fontSize: 26.sp,
                                                                ),),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          height: 70.w,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(right: 200.w),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text('Heart Rate',
                                                    style: TextStyle(
                                                      color: GlobalStyle.green,
                                                      fontSize: 36.sp,
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 40.w,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: [
                                                      Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Text('75 bpm',
                                                            style: TextStyle(
                                                              fontSize: 36.sp,
                                                            ),
                                                          ),
                                                          Container(
                                                            height: 20.w,
                                                          ),
                                                          Text('Health Zone',
                                                            style: TextStyle(
                                                              color: GlobalStyle.green,
                                                              fontSize: 28.sp,
                                                            ),),
                                                        ],
                                                      ),
                                                      Container(
                                                        width: 110.w,
                                                        height: 110.w,
                                                        margin: EdgeInsets.only(left: 30.w),
                                                        decoration: BoxDecoration(
                                                          shape: BoxShape.circle,
                                                          color: GlobalStyle.light_green,
                                                        ),
                                                        child: Center(
                                                          child: Icon(Icons.wind_power_outlined, color: GlobalStyle.green, size: 35.sp,),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text('Water Balance',
                                                    style: TextStyle(
                                                      color: GlobalStyle.green,
                                                      fontSize: 36.sp,
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 40.w,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: [
                                                      Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Text('Drunk',
                                                            style: TextStyle(
                                                              color: GlobalStyle.gray,
                                                              fontSize: 28.sp,
                                                            ),
                                                          ),
                                                          Container(
                                                            height: 20.w,
                                                          ),
                                                          Text('1250ml / 2000ml',
                                                            style: TextStyle(
                                                              fontSize: 35.sp,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Container(
                                                        width: 110.w,
                                                        height: 110.w,
                                                        margin: EdgeInsets.only(left: 30.w),
                                                        decoration: BoxDecoration(
                                                          shape: BoxShape.circle,
                                                          color: GlobalStyle.light_green,
                                                        ),
                                                        child: Center(
                                                          child: Icon(Icons.add, color: GlobalStyle.green, size: 35.sp,),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          height: 10.w,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
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


class MyGoal extends StatelessWidget {
  final String type;
  final String progress;
  final String unit;
  final String goal;

  const MyGoal({
    super.key,
    required this.type,
    required this.progress,
    required this.unit,
    required this.goal
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(type,
                      style: TextStyle(
                        color: GlobalStyle.gray,
                        fontSize: 27.sp
                      ),
                    ),
                    Container(height: 16.w,),
                    Text(progress + ' ' + unit,
                      style: TextStyle(
                          color: GlobalStyle.dark,
                          fontSize: 32.sp
                      ),
                    )
                  ],
                ),
                Container(height: 40.w,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('나의 목표',
                      style: TextStyle(
                        color: GlobalStyle.gray,
                        fontSize: 27.sp
                      ),
                    ),
                    Container(height: 16.w,),
                    Text(goal + ' ' + unit,
                        style: TextStyle(
                            color: GlobalStyle.dark,
                            fontSize: 32.sp
                        )
                    ),
                  ],
                ),
              ],
            ),
            Container(
              width: 190.w,
              height: 190.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(150.r),
                  border: Border.all(
                      width: 10.w,
                      style: BorderStyle.solid,
                      color: GlobalStyle.light_gray
                  )
              ),
              child: Center(
                child: Text(progress,
                  style: TextStyle(
                    color: GlobalStyle.gray,
                    fontSize: 42.sp,
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          height: 60.w,
        ),
        Row(
          children: [
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('탄수화물',
                    style: TextStyle(
                        color: GlobalStyle.green,
                      fontSize: 27.sp
                    ),
                  ),
                  Container(height: 16.w,),
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 11.w,
                        decoration: BoxDecoration(
                            color: GlobalStyle.lighter_gray,
                            borderRadius: BorderRadius.circular(50.r)
                        ),
                      ),
                      Container(
                        width: 70.w,
                        height: 11.w,
                        decoration: BoxDecoration(
                            color: GlobalStyle.green,
                            borderRadius: BorderRadius.circular(50.r)
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(width: 40.w,),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('단백질',
                    style: TextStyle(
                        color: GlobalStyle.green,
                        fontSize: 27.sp
                    ),
                  ),
                  Container(height: 16.w,),
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 11.w,
                        decoration: BoxDecoration(
                            color: GlobalStyle.lighter_gray,
                            borderRadius: BorderRadius.circular(50.r)
                        ),
                      ),
                      Container(
                        width: 70.w,
                        height: 11.w,
                        decoration: BoxDecoration(
                            color: GlobalStyle.red,
                            borderRadius: BorderRadius.circular(50.r)
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(width: 40.w,),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('지방',
                    style: TextStyle(
                        color: GlobalStyle.green,
                        fontSize: 27.sp
                    ),
                  ),
                  Container(height: 16.w,),
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 11.w,
                        decoration: BoxDecoration(
                            color: GlobalStyle.lighter_gray,
                            borderRadius: BorderRadius.circular(50.r)
                        ),
                      ),
                      Container(
                        width: 70.w,
                        height: 11.w,
                        decoration: BoxDecoration(
                            color: GlobalStyle.light_blue,
                            borderRadius: BorderRadius.circular(50.r)
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

var TextButtonStyle = ButtonStyle(
    minimumSize: MaterialStatePropertyAll(Size.zero),
    padding: MaterialStatePropertyAll(EdgeInsets.zero),
    overlayColor: MaterialStatePropertyAll(Colors.transparent)
);

class Training extends StatelessWidget {
  const Training({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
  });

  final String title, subtitle;
  final image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Container(
              width: 100.w,
              height: 100.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: GlobalStyle.light_green,
              ),
              child: Center(
                child: image,
              ),
            ),
            Container(
              width: 20.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                  style: TextStyle(
                    fontSize: 30.sp,
                  ),
                ),
                Container(
                  height: 10.w,
                ),
                Text(subtitle,
                  style: TextStyle(
                    fontSize: 28.sp,
                    color: GlobalStyle.gray,
                  ),),
              ],
            ),
          ],
        ),
      ],
    );
  }
}




var shadow = [BoxShadow(
  color: GlobalStyle.gray.withOpacity(0.1),
  blurRadius: 5.0,
  spreadRadius: 0.0,
  offset: Offset(2,3),
)];



class ProfileFlex extends StatelessWidget {
  final String top, num, unit;
  final Color color;

  ProfileFlex({
    super.key,
    required this.top,
    required this.num,
    required this.unit,
    required this.color,

});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      fit: FlexFit.tight,
      child: Column(
        children: [
          Text(top,
            style: TextStyle(
              color: GlobalStyle.green,
              fontSize: 28.sp,
            ),
          ),
          Container(height: 10.w,),
          RichText(
            text: TextSpan(
                text: num,
                style: TextStyle(
                    fontSize: 45.sp,
                    color: color
                ),
                children: [TextSpan(
                  text: unit,
                  style: TextStyle(
                    fontSize: 32.sp,
                  ),
                ),
                ]
            ),

          ),
        ],
      ),
    );
  }
}
