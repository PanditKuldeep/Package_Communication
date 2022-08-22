import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/di/app_dependencies.dart';
import 'package:getx_demo/routes/app_pages.dart';

void main() async {
  await AppDependencies.dependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Package Communication',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue,
        ).copyWith(secondary: Colors.yellowAccent),
      ),
      getPages: AppPages.pages,
      initialRoute: Routes.splashPage,
    );
  }
}
