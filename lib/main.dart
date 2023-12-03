import 'package:flutter/material.dart';
import 'package:palmeirasapp/src/pages/auth/sign_in_screen.dart';
import 'package:palmeirasapp/src/config/custom_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: customColors.customSwatchColor,
          scaffoldBackgroundColor: Colors.white70),
      home: const SignInScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
