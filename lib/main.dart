import 'package:flutter/material.dart';
import 'package:posttest5_1915016119_s_saleh_ali_al_idrus/MainPage.dart';
import 'package:posttest5_1915016119_s_saleh_ali_al_idrus/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

