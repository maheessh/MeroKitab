import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:merokitab/screens/home_screen.dart';
import 'package:merokitab/screens/splash_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );

    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MeroKitab',
      home: SplashScreen(),
    );
  }
}