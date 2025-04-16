import 'package:flutter/material.dart';
import 'package:reluv_cursor/components/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'reluv',
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          primary: const Color(0xFF7D1C4A),
          secondary: const Color(0xFFD17D98),
          surface: Colors.white,
          background: const Color(0xFFF4CCE9),
          onPrimary: Colors.white,
          onSecondary: const Color(0xFF56021F),
          onBackground: const Color(0xFF56021F),
          onSurface: const Color(0xFF56021F),
        ),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF7D1C4A),
          foregroundColor: Colors.white,
        ),
      ),
      home: const SplashScreen(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('reluv'),
      ),
      body: const Center(
        child: Text('Welcome to reluv'),
      ),
    );
  }
}
