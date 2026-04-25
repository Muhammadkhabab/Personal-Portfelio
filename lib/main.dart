import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/controllers/bindings.dart';
import 'package:portfolio/screens/home/HomePage.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: BindingsDI(),
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: colors.bgLight,
        colorScheme: ColorScheme.fromSeed(
            seedColor: colors.primary, brightness: Brightness.light),
        useMaterial3: true,
      ),
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      //   scaffoldBackgroundColor: colors.bgDark,
      //   colorScheme: ColorScheme.fromSeed(
      //       seedColor: colors.bgDark, brightness: Brightness.dark),
      //   useMaterial3: true,
      // ),
      // themeMode: ThemeMode.dark,
      title: utils.appName,
      home: HomePage(),
    );
  }
}


