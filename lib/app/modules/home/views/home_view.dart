import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Health Tracker'),
      ),
      body: ResponsiveBreakpoints(
        breakpoints: [
          Breakpoint(start: 0, end: 600, name: MOBILE),
          Breakpoint(start: 601, end: 800, name: TABLET),
          Breakpoint(start: 801, end: double.infinity, name: DESKTOP),
        ],
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(() => Text('Heart Rate: ${controller.count.value} bpm')),
                Obx(() => Text('Sleep Hours: ${controller.count.value} hrs')),
                Obx(() => Text('Steps: ${controller.count.value}')),
                // Add your charts and additional content here
              ],
            ),
          ),
        ),
      ),
    );
  }
}
