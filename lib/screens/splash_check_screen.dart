import 'package:flutter/material.dart';
import 'home_screen.dart';

class SplashCheckScreen extends StatefulWidget {
  const SplashCheckScreen({super.key});

  @override
  State<SplashCheckScreen> createState() => _SplashCheckScreenState();
}

class _SplashCheckScreenState extends State<SplashCheckScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          'مبتكر اليمن',
          style: TextStyle(
            color: Color(0xFFD4AF37),
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
