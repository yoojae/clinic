import 'package:flutter/material.dart';
import 'package:hospital/global_asset/global_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class LeftContents extends StatelessWidget {
  const LeftContents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Padding(
        padding: EdgeInsets.only(right: 30.w,),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // -------------------------Profile-----------------------------
            Stack(
              children: [
                Positioned(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(24.w, 90.w, 24.w, 30.w),
                    margin: EdgeInsets.only(top: 70.w),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: GlobalStyle.white,
                        borderRadius: BorderRadius.circular(40.r),
                        boxShadow: shadow
                    ),
                    child: Column(
                      children: [
                        Text('김민지',
                          style: TextStyle(
                              color: GlobalStyle.dark,
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                        Container(height: 10.w,),
                        Text('27세, 부산시 해운대구',
                          style: TextStyle(
                            color: GlobalStyle.gray,
                            fontSize: 16.sp,
                          ),
                        ),
                        Container(height: 32.w,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ProfileFlex(top: '체중', num: '60', unit: 'kg', color: GlobalStyle.dark,),
                            Container(
                              width: 1,
                              height: 78.w,
                              color: GlobalStyle.light_gray,
                            ),
                            ProfileFlex(top: '키', num: '170', unit: 'cm', color: GlobalStyle.dark,),
                            Container(
                              width: 1,
                              height: 78.w,
                              color: GlobalStyle.light_gray,
                            ),
                            ProfileFlex(top: '목표', num: '55', unit: 'kg', color: GlobalStyle.yellow,),
                          ],
                        ),
                        Container(height: 24.w,)
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  child: Container(
                    width: 140.w,
                    height: 140.w,
                    child: Image.asset('images/png/11.png'),
                  ),
                ),
              ],
            ),

            // -------------------------MyGoal-----------------------------
            Container(
              padding: EdgeInsets.symmetric(
                  vertical: 30.w,
                  horizontal: 30.w
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: GlobalStyle.white,
                  borderRadius: BorderRadius.circular(40.r),
                  boxShadow: shadow
              ),
              child: Column(
                children: [
                  MyGoal(type: '걸음', progress: '4532', unit: '걸음', goal: '6500'),
                  Container(height: 40.w,),
                  Container(
                    height: 1,
                    color: GlobalStyle.light_gray,
                  ),
                  Container(height: 40.w,),
                  MyGoal(type: '칼로리 소모', progress: '325', unit: 'kcal', goal: '800'),
                  Container(height: 22.w,)
                ],
              ),
            ),
          ],
        ),
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
                          fontSize: 18.sp
                      ),
                    ),
                    Container(height: 10.w,),
                    Text(progress + ' ' + unit,
                      style: TextStyle(
                          color: GlobalStyle.dark,
                          fontSize: 22.sp
                      ),
                    )
                  ],
                ),
                Container(height: 24.w,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('나의 목표',
                      style: TextStyle(
                          color: GlobalStyle.gray,
                          fontSize: 18.sp
                      ),
                    ),
                    Container(height: 10.w,),
                    Text(goal + ' ' + unit,
                        style: TextStyle(
                            color: GlobalStyle.dark,
                            fontSize: 22.sp
                        )
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(right: 38.w),
              width: 150.w,
              height: 150.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(150.r),
                  border: Border.all(
                      width: 6.w,
                      style: BorderStyle.solid,
                      color: GlobalStyle.light_gray
                  )
              ),
              child: Center(
                child: Text(progress,
                  style: TextStyle(
                    color: GlobalStyle.gray,
                    fontSize: 30.sp,
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          height: 38.w,
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
                        fontSize: 18.sp
                    ),
                  ),
                  Container(height: 16.w,),
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 6.w,
                        decoration: BoxDecoration(
                            color: GlobalStyle.lighter_gray,
                            borderRadius: BorderRadius.circular(50.r)
                        ),
                      ),
                      Container(
                        width: 70.w,
                        height: 6.w,
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
                        fontSize: 18.sp
                    ),
                  ),
                  Container(height: 16.w,),
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 6.w,
                        decoration: BoxDecoration(
                            color: GlobalStyle.lighter_gray,
                            borderRadius: BorderRadius.circular(50.r)
                        ),
                      ),
                      Container(
                        width: 70.w,
                        height: 6.w,
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
                        fontSize: 18.sp
                    ),
                  ),
                  Container(height: 16.w,),
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 6.w,
                        decoration: BoxDecoration(
                            color: GlobalStyle.lighter_gray,
                            borderRadius: BorderRadius.circular(50.r)
                        ),
                      ),
                      Container(
                        width: 70.w,
                        height: 6.w,
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
              fontSize: 20.sp,
            ),
          ),
          RichText(
            text: TextSpan(
                text: num,
                style: TextStyle(
                    fontSize: 30.sp,
                    color: color
                ),
                children: [TextSpan(
                  text: unit,
                  style: TextStyle(
                    fontSize: 22.sp,
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
