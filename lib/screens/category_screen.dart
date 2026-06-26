import 'package:flutter/material.dart';
import 'quiz_screen.dart';

import '../data/naruto_questions.dart';
import '../data/onepiece_questions.dart';
import '../data/dragonball_questions.dart';
import '../data/demonslayer_questions.dart';
import '../data/aot_questions.dart';
import '../data/jjk_questions.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  final List<String> categories = const [
    "Naruto",
    "One Piece",
    "Dragon Ball",
    "Attack on Titan",
    "Demon Slayer",
    "Jujutsu Kaisen",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Choisir une catégorie"),
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: const Icon(Icons.movie),
              title: Text(categories[index]),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                switch (index) {
                  case 0:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => QuizScreen(
                          questions: narutoQuestions,
                          title: "Naruto",
                        ),
                      ),
                    );
                    break;

                  case 1:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => QuizScreen(
                          questions: onePieceQuestions,
                          title: "One Piece",
                        ),
                      ),
                    );
                    break;

                  case 2:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => QuizScreen(
                          questions: dragonBallQuestions,
                          title: "Dragon Ball",
                        ),
                      ),
                    );
                    break;

                  case 3:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => QuizScreen(
                          questions: aotQuestions,
                          title: "Attack on Titan",
                        ),
                      ),
                    );
                    break;

                  case 4:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => QuizScreen(
                          questions: demonSlayerQuestions,
                          title: "Demon Slayer",
                        ),
                      ),
                    );
                    break;

                  case 5:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => QuizScreen(
                          questions: jjkQuestions,
                          title: "Jujutsu Kaisen",
                        ),
                      ),
                    );
                    break;
                }
              },
            ),
          );
        },
      ),
    );
  }
}