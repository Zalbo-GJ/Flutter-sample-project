import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 1), () {
      Get.offAllNamed('/login');
    });
    return const Scaffold(
      body: Center(
        child: Image(
          image: AssetImage('assets/images/logo.png'),
        ),
      ),
    );
  }
}