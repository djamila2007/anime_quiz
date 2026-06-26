import 'package:flutter/material.dart';
import 'home_screen.dart';

class ResultScreen extends StatelessWidget {
  final int score;

  const ResultScreen({
    super.key,
    required this.score,
  });

  @override
  Widget build(BuildContext context) {
    String message;

    if (score == 5) {
      message = "🏆 Excellent !";
    } else if (score >= 3) {
      message = "👏 Très bien !";
    } else {
      message = "📚 Continue à t'entraîner.";
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Résultat"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              const Icon(
                Icons.emoji_events,
                size: 90,
                color: Colors.amber,
              ),

              const SizedBox(height: 20),

              const Text(
                "Quiz terminé !",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              Text(
                "$score / 5",
                style: const TextStyle(
                  fontSize: 45,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              Text(
                "${((score / 5) * 100).toInt()} %",
                style: const TextStyle(fontSize: 22),
              ),

              const SizedBox(height: 20),

              Text(
                message,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 18),
              ),

              const SizedBox(height: 35),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const HomeScreen(),
                      ),
                      (route) => false,
                    );
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      "Retour à l'accueil",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}