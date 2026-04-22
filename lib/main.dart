import 'package:flutter/material.dart';
import 'screens/splash_check_screen.dart';

void main() {
  runApp(const MubtakerYemenApp());
}

class MubtakerYemenApp extends StatelessWidget {
  const MubtakerYemenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'مبتكر اليمن',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF000000),
        primaryColor: const Color(0xFFD4AF37),
        fontFamily: 'Cairo',
      ),
      home: const SplashCheckScreen(),
    );
  }
}
