import 'package:flutter/material.dart';
import 'package:hospital/global_asset/global_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RightContentsRight extends StatelessWidget {
  const RightContentsRight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30.w, horizontal: 30.w),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40.r),
          boxShadow: shadow
      ),
      child: Column(
        children: [
          Container(
            height: 70.w,
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
              padding: EdgeInsets.only(left: 30.w, right: 14.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('더 나은 결과를 얻으려면 Apple Watch를 연결하세요!',
                    style: TextStyle(
                      color: GlobalStyle.white,
                      fontSize: 20.sp,
                    ),
                  ),
                  Container(
                    width: 50.w,
                    height: 50.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Center(
                      child: Icon(Icons.wifi_outlined, color: GlobalStyle.green, size: 26.sp,),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 40.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text('인기 트레이닝',
                  style: TextStyle(
                    color: GlobalStyle.green,
                    fontSize: 26.sp,
                  ),
                ),
              ),
              Container(
                height: 30.w,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Training(title: '파워 트레이닝', subtitle: '395 kcal / h', image: Image.asset('images/png/34.png',
                    width: 22.w,
                  ),),
                  Training(title: '요가 트레이닝', subtitle: '395 kcal / h', image: Image.asset('images/png/35.png',
                    width: 22.w,

                  ),),
                  Training(title: '스트레칭', subtitle: '395 kcal / h', image: Image.asset('images/png/36.png',
                    width: 22.w,
                  ),),
                  Container(width: 70.w,)
                ],
              ),
              Container(
                height: 40.w,
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
                        Text('활동 통계',
                          style: TextStyle(
                            color: GlobalStyle.green,
                            fontSize: 26.sp,
                          ),
                        ),
                        Container(
                          height: 30.w,
                        ),
                        Container(
                          height: 404.w,
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
                            Text('나의 트레이닝',
                              style: TextStyle(
                                color: GlobalStyle.green,
                                fontSize: 26.sp,
                              ),
                            ),
                            Container(
                              width: 48.w,
                              height: 34.w,
                              decoration: BoxDecoration(
                                color: GlobalStyle.light_green,
                                borderRadius: BorderRadius.circular(14.r),
                              ),
                              child: Center(
                                child: Icon(Icons.add, color: GlobalStyle.green, size: 20.sp,),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 30.w,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30.r),
                            boxShadow: [BoxShadow(
                              blurRadius: 5.0,
                              color: Colors.grey.shade100,
                              offset: Offset(2, 5),
                            )],
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 16.w, horizontal: 16.w,),
                                child: Row(
                                  children: [
                                    Flexible(
                                      flex: 1,
                                      fit: FlexFit.tight,
                                      child: Text('트레이닝', style: TextStyle(
                                        fontSize: 20.sp,
                                      ),),
                                    ),
                                    Flexible(
                                      flex: 1,
                                      child: Text('TRX 운동', style: TextStyle(
                                        fontSize: 20.sp,
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
                                padding: EdgeInsets.symmetric(vertical: 16.w, horizontal: 16.w,),
                                child: Row(
                                  children: [
                                    Flexible(
                                      flex: 1,
                                      fit: FlexFit.tight,
                                      child: Text('열량소모', style: TextStyle(
                                        fontSize: 20.sp,
                                      ),),
                                    ),
                                    Flexible(
                                      flex: 1,
                                      child: Text('350 Kcal', style: TextStyle(
                                        fontSize: 20.sp,
                                      ),),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 16.w, horizontal: 16.w,),
                                child: Row(
                                  children: [
                                    Flexible(
                                      flex: 1,
                                      fit: FlexFit.tight,
                                      child: Text('소요시간', style: TextStyle(
                                        fontSize: 20.sp,
                                      ),),
                                    ),
                                    Flexible(
                                      flex: 1,
                                      child: Text('1hr 45m', style: TextStyle(
                                        fontSize: 20.sp,
                                      ),),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 30.w,
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
                                padding: EdgeInsets.symmetric(vertical: 16.w, horizontal: 16.w,),
                                child: Row(
                                  children: [
                                    Flexible(
                                      flex: 1,
                                      fit: FlexFit.tight,
                                      child: Text('트레이닝', style: TextStyle(
                                        fontSize: 20.sp,
                                      ),),
                                    ),
                                    Flexible(
                                      flex: 1,
                                      child: Text('스트레칭', style: TextStyle(
                                        fontSize: 20.sp,
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
                                padding: EdgeInsets.symmetric(vertical: 16.w, horizontal: 16.w,),
                                child: Row(
                                  children: [
                                    Flexible(
                                      flex: 1,
                                      fit: FlexFit.tight,
                                      child: Text('열량소모', style: TextStyle(
                                        fontSize: 20.sp,
                                      ),),
                                    ),
                                    Flexible(
                                      flex: 1,
                                      child: Text('180 Kcal', style: TextStyle(
                                        fontSize: 20.sp,
                                      ),),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 16.w, horizontal: 16.w,),
                                child: Row(
                                  children: [
                                    Flexible(
                                      flex: 1,
                                      fit: FlexFit.tight,
                                      child: Text('소요시간', style: TextStyle(
                                        fontSize: 20.sp,
                                      ),),
                                    ),
                                    Flexible(
                                      flex: 1,
                                      child: Text('30m', style: TextStyle(
                                        fontSize: 20.sp,
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
                height: 40.w,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 200.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('심박수',
                          style: TextStyle(
                            color: GlobalStyle.green,
                            fontSize: 26.sp,
                          ),
                        ),
                        Container(
                          height: 20.w,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('75 bpm',
                                  style: TextStyle(
                                    fontSize: 26.sp,
                                  ),
                                ),
                                Container(
                                  height: 12.w,
                                ),
                                Text('건강 데이터',
                                  style: TextStyle(
                                    color: GlobalStyle.green,
                                    fontSize: 18.sp,
                                  ),),
                              ],
                            ),
                            Container(
                              width: 80.w,
                              height: 80.w,
                              margin: EdgeInsets.only(left: 30.w),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: GlobalStyle.light_green,
                              ),
                              child: Center(
                                child: Icon(Icons.wind_power_outlined, color: GlobalStyle.green, size: 26.sp,),
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
                        Text('수분 밸런스',
                          style: TextStyle(
                            color: GlobalStyle.green,
                            fontSize: 26.sp,
                          ),
                        ),
                        Container(
                          height: 20.w,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('섭취량',
                                  style: TextStyle(
                                    color: GlobalStyle.gray,
                                    fontSize: 18.sp,
                                  ),
                                ),
                                Container(
                                  height: 12.w,
                                ),
                                Text('1250ml / 2000ml',
                                  style: TextStyle(
                                    fontSize: 26.sp,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: 80.w,
                              height: 80.w,
                              margin: EdgeInsets.only(left: 30.w),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: GlobalStyle.light_green,
                              ),
                              child: Center(
                                child: Icon(Icons.add, color: GlobalStyle.green, size: 30.sp,),
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
    );
  }
}



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
              width: 70.w,
              height: 70.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: GlobalStyle.light_green,
              ),
              child: Center(
                child: image,
              ),
            ),
            Container(
              width: 24.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                  style: TextStyle(
                    fontSize: 22.sp,
                  ),
                ),
                Container(
                  height: 4.w,
                ),
                Text(subtitle,
                  style: TextStyle(
                    fontSize: 18.sp,
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