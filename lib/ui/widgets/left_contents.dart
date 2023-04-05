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
                        // boxShadow: shadow
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
                  // boxShadow: shadow
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
