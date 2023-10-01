import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample/features/login_page/presentation/screen/login_page.dart';
import 'package:sample/features/splash_page/presentation/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/splash',
      getPages: [
        GetPage(name: '/splash', page: () => Splash()),
        GetPage(name: '/login', page: () => LoginPage()),
      ],
    );
  }
}