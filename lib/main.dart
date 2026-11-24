import 'package:flutter/material.dart';
import 'screens/verde_login_screen.dart';
import 'screens/verde_home_screen.dart';

void main() {
  runApp(const VerdeApp());
}

class VerdeApp extends StatelessWidget {
  const VerdeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Verde E-Wallet',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF6F7F2),
        primaryColor: const Color(0xFF68CE2A),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF68CE2A),
          primary: const Color(0xFF68CE2A),
          secondary: const Color(0xFF1A2213),
        ),
        fontFamily: 'Roboto',
      ),
      // HOW TO PREVIEW BOTH SCREENS:
      // Uncomment the screen you want to preview and screenshot, then Hot Restart.
      home: const VerdeLoginScreen(),
      // home: const VerdeHomeScreen(),
    );
  }
}