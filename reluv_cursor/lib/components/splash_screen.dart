import 'package:flutter/material.dart';
import 'dart:async';
import 'package:reluv_cursor/components/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo placeholder - replace with actual logo asset
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: const Color(0xFFF4CCE9),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Icon(
                Icons.favorite,
                size: 80,
                color: Color(0xFF7D1C4A),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'ReLuv',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color(0xFF7D1C4A),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Find Your Perfect Match',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF56021F),
              ),
            ),
          ],
        ),
      ),
    );
  }
} 