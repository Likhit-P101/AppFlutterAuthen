import 'package:app_flutter_authen/src/ui/login_page.dart';
import 'package:flutter/material.dart';
import 'package:app_flutter_authen/src/ui/home_page.dart';
import 'package:app_flutter_authen/src/ui/splash_screen_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Routes
    var routes = <String, WidgetBuilder>{
      '/HomePage': (BuildContext context) =>
          HomePage(strTitleName: 'Flutter 101 Authentication'),
    };

    return MaterialApp(
      title: 'Flutter',
      
      // theme: ThemeData(
      //   inputDecorationTheme: InputDecorationTheme(focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red))),
      //   accentColor: Colors.white,
      //   primarySwatch: Colors.blue,
      // ),
      
      home: SplashScreenPage(),
      // home: LoginPage(),
      routes: <String, WidgetBuilder>{
        '/LoginPage': (BuildContext context) => LoginPage(),
      },
    );
  }
}
