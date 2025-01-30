import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Health Tracker',
      initialRoute: AppPages.iNITIAL,
      getPages: AppPages.routes,
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          Breakpoint(start: 0, end: 600, name: MOBILE),
          Breakpoint(start: 601, end: 800, name: TABLET),
          Breakpoint(start: 801, end: double.infinity, name: DESKTOP),

          // const Breakpoint(start: 0, end: 450, name: MOBILE),
          // const Breakpoint(start: 451, end: 800, name: TABLET),
          // const Breakpoint(start: 801, end: 1920, name: DESKTOP),
          // const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
      ),
    );
  }
}
