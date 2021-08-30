import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zeely/screens/onboarding/onboarding_3/onboarding_3.dart';
import 'package:zeely/screens/splashscreens/splashcreens.dart';

import 'screens/onboarding/onboarding_2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zeely',
      theme: ThemeData(
        fontFamily: 'GothamPro',
        primarySwatch: Colors.blue,
      ),
      home: OnBoarding3(),
      getPages: [
        GetPage(name: '/splash_screens', page: () => SplashScreens()),
        GetPage(name: '/onboarding_2', page: () => OnBoarding2()),
        GetPage(name: '/onboarding_3', page: () => OnBoarding3())
      ],
    );
  }
}
