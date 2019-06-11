import 'package:flutter/material.dart';

class MyNavigator {
  static void goToHome(BuildContext context) {
    Navigator.pushNamed(context, '/HomePage');
  }

  static void goToIntro(BuildContext context) {
    Navigator.pushNamed(context, '/HomePage');
  }
}
