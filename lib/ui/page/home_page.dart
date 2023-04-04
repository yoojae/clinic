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
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 88.w,
                        height: 110.w,
                        child: Image.asset('images/png/logo.png'),
                      ),
                      Container(width: 15,),
                      Text('XRay',
                        style: TextStyle(
                          fontSize: 58.sp,
                          color: GlobalStyle.white
                        ),
                      )
                    ],
                  ),
                  Container(height: 32,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 22.w),
                        child: Text('Dashboard',
                          style: TextStyle(
                            color: GlobalStyle.white,
                            fontSize: 30.sp,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                      Container(height: 14,),
                      Column(
                        children: [
                          Menu(icon: Icons.local_hospital,
                              menu: 'Doctor Dashboard',
                              boxColor: Colors.transparent,
                              iconTextColor: GlobalStyle.white),
                          Menu(icon: Icons.house,
                              menu: 'Hospital Dashboard 1',
                              boxColor: Colors.transparent,
                              iconTextColor: GlobalStyle.white),
                          Menu(icon: Icons.account_balance_wallet_rounded,
                              menu: 'Hospital Dashboard 2',
                              boxColor: Colors.transparent,
                              iconTextColor: GlobalStyle.white),
                          Menu(icon: Icons.people_alt,
                              menu: 'Patient Dashboard',
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
            flex: 8,
            child: Container(
              height: double.infinity,
              decoration: const BoxDecoration(
                color: GlobalStyle.bg,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  bottomLeft: Radius.circular(25),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    // -------------------------Header-----------------------------
                    Container(
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
                          // TextField(
                          //   decoration:
                          //   InputDecoration(
                          //     border:
                          //   ),
                          // ),
                          Container(
                            width: 600.w,
                            height: 70.w,
                            decoration: BoxDecoration(
                              color: GlobalStyle.light_green,
                              borderRadius: BorderRadius.circular(30.r),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Type here to search...',
                                    style: TextStyle(
                                      color: GlobalStyle.gray,
                                      fontSize: 22.sp,
                                    ),
                                  ),
                                  Icon(Icons.search_rounded, color: GlobalStyle.green, size: 40.sp,),
                                ],
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
                                      Text('Bini Jets',
                                        style: TextStyle(
                                          fontSize: 29.sp,
                                        ),
                                      ),
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
                      padding: const EdgeInsets.symmetric(horizontal: 30,),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          // -------------------------Left Box-----------------------------
                          Flexible(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 30,),
                              child: Column(
                                children: [
                                  // -------------------------Profile-----------------------------
                                  Stack(
                                    children: [
                                      Positioned(
                                        child: Container(
                                          padding: EdgeInsets.fromLTRB(0, 135.w, 0, 20),
                                          margin: EdgeInsets.only(top: 115.w),
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: GlobalStyle.white,
                                            borderRadius: BorderRadius.circular(25),
                                            boxShadow: shadow
                                          ),
                                          child: Column(
                                            children: [
                                              Text('Bess Willis',
                                                style: TextStyle(
                                                    color: GlobalStyle.dark,
                                                    fontSize: 37.sp,
                                                  fontWeight: FontWeight.w600
                                                ),
                                              ),
                                              Container(height: 8,),
                                              Text('27 years, California',
                                                style: TextStyle(
                                                    color: GlobalStyle.gray,
                                                  fontSize: 27.sp,
                                                ),
                                              ),
                                              Container(height: 42,),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Flexible(
                                                    flex: 1,
                                                    fit: FlexFit.tight,
                                                      child: Column(
                                                        children: [
                                                          Text('Weight',
                                                            style: TextStyle(
                                                              color: GlobalStyle.green,
                                                              fontSize: 30.sp,
                                                            ),
                                                          ),
                                                          Container(height: 5,),
                                                          Text('60kg',
                                                            style: TextStyle(
                                                              fontSize: 45.sp,
                                                              color: GlobalStyle.dark
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  Container(
                                                    width: 1,
                                                    height: 100.w,
                                                    color: GlobalStyle.light_gray,
                                                  ),
                                                  Flexible(
                                                    flex: 1,
                                                    fit: FlexFit.tight,
                                                    child: Column(
                                                        children: [
                                                          Text('Height',
                                                            style: TextStyle(
                                                                color: GlobalStyle.green,
                                                                fontSize: 30.sp
                                                            ),
                                                          ),
                                                          Container(height: 5,),
                                                          Text('170cm',
                                                            style: TextStyle(
                                                                fontSize: 45.sp,
                                                                color: GlobalStyle.dark
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  Container(
                                                    width: 1,
                                                    height: 100.w,
                                                    color: GlobalStyle.light_gray,
                                                  ),
                                                  Flexible(
                                                    flex: 1,
                                                    fit: FlexFit.tight,
                                                    child: Column(
                                                        children: [
                                                          Text('Goal',
                                                            style: TextStyle(
                                                                color: GlobalStyle.green,
                                                                fontSize: 30.sp
                                                            ),
                                                          ),
                                                          Container(height: 5,),
                                                          Text('55kg',
                                                            style: TextStyle(
                                                                fontSize: 45.sp,
                                                                color: GlobalStyle.yellow
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                ],
                                              ),
                                              Container(height: 32,)
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
                                  Container(
                                    height: 30,
                                  ),

                                  // -------------------------MyGoal-----------------------------
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 30,
                                      horizontal: 30
                                    ),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: GlobalStyle.white,
                                      borderRadius: BorderRadius.circular(25),
                                      boxShadow: shadow
                                    ),
                                    child: Column(
                                      children: [
                                        MyGoal(type: 'Walked', progress: '4532', unit: 'steps', goal: '6500'),
                                        Container(height: 30,),
                                        Container(
                                          height: 1,
                                          color: GlobalStyle.light_gray,
                                        ),
                                        Container(height: 30,),
                                        MyGoal(type: 'Burned', progress: '325', unit: 'kcal', goal: '800'),
                                        Container(height: 22,)
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
                              padding: EdgeInsets.symmetric(vertical: 25.w, horizontal: 30.w),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25.r),
                                boxShadow: shadow
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 70,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [GlobalStyle.green, GlobalStyle.light_green],
                                          begin: Alignment.centerLeft,
                                          end: Alignment.bottomRight
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 15),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Advice! Connect your Apple Watch for better results.',
                                            style: TextStyle(
                                              color: GlobalStyle.white,
                                            ),
                                          ),
                                          Container(
                                            width: 50,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(20),
                                            ),
                                            child: Center(
                                              child: Icon(Icons.wifi_outlined, color: GlobalStyle.green,),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 30,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text('Popular Training',
                                          style: TextStyle(
                                            color: GlobalStyle.green,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 25,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Training(title: 'Power Training', subtitle: '395 kcal / h', image: Image.asset('images/png/34.png'),),
                                          Training(title: 'Yoga Training', subtitle: '395 kcal / h', image: Image.asset('images/png/35.png'),),
                                          Training(title: 'Stretching', subtitle: '395 kcal / h', image: Image.asset('images/png/36.png'),),
                                        ],
                                      ),
                                      Container(
                                        height: 50,
                                      ),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Flexible(
                                            flex: 2,
                                            fit: FlexFit.tight,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('Activity Statistic',
                                                  style: TextStyle(
                                                    color: GlobalStyle.green,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                                Container(
                                                  height: 10,
                                                ),
                                                Container(
                                                  width: 400,
                                                  height: 330,
                                                  color: Colors.grey.shade100,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Flexible(
                                            flex: 1,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('My Training',
                                                      style: TextStyle(
                                                        color: GlobalStyle.green,
                                                        fontSize: 18,
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 30,
                                                      height: 25,
                                                      decoration: BoxDecoration(
                                                        color: GlobalStyle.light_green,
                                                        borderRadius: BorderRadius.circular(10),
                                                      ),
                                                      child: Center(
                                                        child: Icon(Icons.add, color: GlobalStyle.green,),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Container(
                                                  height: 30,
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.circular(15),
                                                    boxShadow: [BoxShadow(
                                                      blurRadius: 5.0,
                                                      color: Colors.grey.shade100,
                                                      offset: Offset(2, 5),
                                                    )],
                                                  ),
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15,),
                                                        child: Row(
                                                          children: [
                                                            Flexible(
                                                              flex: 1,
                                                              fit: FlexFit.tight,
                                                              child: Text('Training'),
                                                            ),
                                                            Flexible(
                                                              flex: 1,
                                                              child: Text('TRX Cardio'),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        height: 2,
                                                        color: Colors.grey.shade200,
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15,),
                                                        child: Row(
                                                          children: [
                                                            Flexible(
                                                              flex: 1,
                                                              fit: FlexFit.tight,
                                                              child: Text('Burend'),
                                                            ),
                                                            Flexible(
                                                              flex: 1,
                                                              child: Text('350 Kcal'),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15,),
                                                        child: Row(
                                                          children: [
                                                            Flexible(
                                                              flex: 1,
                                                              fit: FlexFit.tight,
                                                              child: Text('Spend'),
                                                            ),
                                                            Flexible(
                                                              flex: 1,
                                                              child: Text('1hr 45m'),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  height: 20,
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.circular(15),
                                                    boxShadow: [BoxShadow(
                                                      blurRadius: 5.0,
                                                      color: Colors.grey.shade100,
                                                      offset: Offset(2, 5),
                                                    )],
                                                  ),
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15,),
                                                        child: Row(
                                                          children: [
                                                            Flexible(
                                                              flex: 1,
                                                              fit: FlexFit.tight,
                                                              child: Text('Training'),
                                                            ),
                                                            Flexible(
                                                              flex: 1,
                                                              child: Text('Stretching'),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        height: 2,
                                                        color: Colors.grey.shade200,
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15,),
                                                        child: Row(
                                                          children: [
                                                            Flexible(
                                                              flex: 1,
                                                              fit: FlexFit.tight,
                                                              child: Text('Burend'),
                                                            ),
                                                            Flexible(
                                                              flex: 1,
                                                              child: Text('180 Kcal'),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15,),
                                                        child: Row(
                                                          children: [
                                                            Flexible(
                                                              flex: 1,
                                                              fit: FlexFit.tight,
                                                              child: Text('Spend'),
                                                            ),
                                                            Flexible(
                                                              flex: 1,
                                                              child: Text('30m'),
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
                                        height: 70,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(right: 100),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('Heart Rate',
                                                  style: TextStyle(
                                                    color: GlobalStyle.green,
                                                    fontSize: 20,
                                                  ),
                                                ),
                                                Container(
                                                  height: 20,
                                                ),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text('75 bpm',
                                                          style: TextStyle(
                                                            fontSize: 20,
                                                          ),
                                                        ),
                                                        Container(
                                                          height: 10,
                                                        ),
                                                        Text('Health Zone',
                                                          style: TextStyle(
                                                            color: GlobalStyle.green,
                                                            fontSize: 14,
                                                          ),),
                                                      ],
                                                    ),
                                                    Container(
                                                      width: 60,
                                                      height: 60,
                                                      margin: EdgeInsets.only(left: 10),
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color: GlobalStyle.light_green,
                                                      ),
                                                      child: Center(
                                                        child: Icon(Icons.wind_power_outlined, color: GlobalStyle.green,),
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
                                                    fontSize: 20,
                                                  ),
                                                ),
                                                Container(
                                                  height: 10,
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
                                                            fontSize: 14,
                                                          ),
                                                        ),
                                                        Container(
                                                          height: 15,
                                                        ),
                                                        Text('1250ml / 2000ml',
                                                          style: TextStyle(
                                                            fontSize: 20,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Container(
                                                      width: 60,
                                                      height: 60,
                                                      margin: EdgeInsets.only(left: 10),
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color: GlobalStyle.light_green,
                                                      ),
                                                      child: Center(
                                                        child: Icon(Icons.add, color: GlobalStyle.green,),
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
                                        height: 40,
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

                    // -------------------------Footer-----------------------------
                    Container(
                      margin: EdgeInsets.all(30),
                      padding: EdgeInsets.symmetric(horizontal: 30),
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
                              Container(width: 10,),
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
      margin: EdgeInsets.symmetric(vertical: 5),
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
          Container(width: 8,),
          Text(menu,
            style: TextStyle(
              color: iconTextColor,
              fontSize: 30.sp
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
                    Container(height: 8,),
                    Text(progress + ' ' + unit,
                      style: TextStyle(
                          color: GlobalStyle.dark,
                          fontSize: 32.sp
                      ),
                    )
                  ],
                ),
                Container(height: 24,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('My Goal',
                      style: TextStyle(
                        color: GlobalStyle.gray,
                        fontSize: 27.sp
                      ),
                    ),
                    Container(height: 8,),
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(progress,
                    style: TextStyle(
                      color: GlobalStyle.gray,
                      fontSize: 42.sp,
                    ),
                  ),
                  Container(height: 8,),
                  Text('left',
                    style: TextStyle(
                      color: GlobalStyle.gray,
                        fontSize: 27.sp
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Container(
          height: 32,
        ),
        Row(
          children: [
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Carbs',
                    style: TextStyle(
                        color: GlobalStyle.green,
                      fontSize: 27.sp
                    ),
                  ),
                  Container(height: 8,),
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
            Container(width: 20,),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Protein',
                    style: TextStyle(
                        color: GlobalStyle.green,
                        fontSize: 27.sp
                    ),
                  ),
                  Container(height: 8,),
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
            Container(width: 20,),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Fat',
                    style: TextStyle(
                        color: GlobalStyle.green,
                        fontSize: 27.sp
                    ),
                  ),
                  Container(height: 8,),
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
              width: 65,
              height: 65,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: GlobalStyle.light_green,
              ),
              child: Center(
                child: image,
              ),
            ),
            Container(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Container(
                  height: 10,
                ),
                Text(subtitle,
                  style: TextStyle(
                    fontSize: 14,
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