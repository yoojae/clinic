import 'package:flutter/material.dart';
import 'package:hospital/ui/page/home_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(2224, 1668),
        builder: (context, child) => MaterialApp(
          title: 'Hospital',
          debugShowCheckedModeBanner: false,
          home: const HomePage(),
        )
    );
  }
}
