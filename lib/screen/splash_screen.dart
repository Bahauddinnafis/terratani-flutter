import 'package:flutter/material.dart';
import 'package:terratani/screen/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => const LoginScreen(),
          ),
          (route) => false);
    });

    return Scaffold(
        backgroundColor: const Color(0xFF219338),
        body: Stack(
          children: [Image.asset('assets/images/splash.png')],
        ));
  }
}
