import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:fluter_aplication_1/screens/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.gif(
      gifPath: 'assets/Loading_splash.gif',
      gifWidth: 250,
      gifHeight: 150,
      duration: const Duration(milliseconds: 3000),
      nextScreen: LoginScreen(),
    );
  }
}

