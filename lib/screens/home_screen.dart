import 'package:flutter/material.dart';
import 'category_screen.dart';
import 'statistics_screen.dart';
import 'settings_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget buildButton(
      BuildContext context,
      String text,
      IconData icon,
      VoidCallback onPressed,
      ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        width: double.infinity,
        height: 60,
        child: ElevatedButton.icon(
          onPressed: onPressed,
          icon: Icon(icon),
          label: Text(
            text,
            style: const TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Anime Quiz"),
      ),

      body: Padding(

        padding: const EdgeInsets.all(20),

        child: Column(

          children: [

            const SizedBox(height: 40),

            const Icon(
              Icons.quiz,
              size: 100,
            ),

            const SizedBox(height: 20),

            const Text(
              "Teste tes connaissances sur les animes",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22),
            ),

            const Spacer(),

            buildButton(
              context,
              "Commencer",
              Icons.play_arrow,
                  () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const CategoryScreen(),
                  ),
                );
              },
            ),

            buildButton(
  context,
  "Statistiques",
  Icons.bar_chart,
  () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const StatisticsScreen(),
      ),
    );
  },
),
buildButton(
  context,
  "Paramètres",
  Icons.settings,
  () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const SettingsScreen(),
      ),
    );
  },
),

          ],
        ),
      ),
    );
  }
}