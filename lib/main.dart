import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const AnimeQuiz());
}

class AnimeQuiz extends StatelessWidget {
  const AnimeQuiz({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Anime Quiz",
      theme: AppTheme.darkTheme,
      home: const SplashScreen(),
    );
  }
}