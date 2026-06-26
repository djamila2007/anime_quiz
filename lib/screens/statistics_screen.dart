import 'package:flutter/material.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Statistiques"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            const Icon(
              Icons.bar_chart,
              size: 90,
              color: Colors.blue,
            ),

            const SizedBox(height: 20),

            const Text(
              "Vos statistiques",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            Card(
              child: ListTile(
                leading: const Icon(Icons.quiz),
                title: const Text("Quiz joués"),
                trailing: const Text("0"),
              ),
            ),

            Card(
              child: ListTile(
                leading: const Icon(Icons.check_circle),
                title: const Text("Bonnes réponses"),
                trailing: const Text("0"),
              ),
            ),

            Card(
              child: ListTile(
                leading: const Icon(Icons.emoji_events),
                title: const Text("Meilleur score"),
                trailing: const Text("0 / 5"),
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Les statistiques seront enregistrées dans une prochaine version.",
              textAlign: TextAlign.center,
            )

          ],
        ),
      ),
    );
  }
}