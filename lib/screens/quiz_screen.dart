import 'package:flutter/material.dart';
import '../models/question.dart';
import 'result_screen.dart';

class QuizScreen extends StatefulWidget {
  final List<Question> questions;
  final String title;

  const QuizScreen({
    super.key,
    required this.questions,
    required this.title,
  });

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestion = 0;
  int score = 0;

  void checkAnswer(int index) {
    if (index == widget.questions[currentQuestion].correctAnswer) {
      score++;
    }

    if (currentQuestion < widget.questions.length - 1) {
      setState(() {
        currentQuestion++;
      });
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => ResultScreen(score: score),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final question = widget.questions[currentQuestion];

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Text(
              "Question ${currentQuestion + 1}/${widget.questions.length}",
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18),
            ),

            const SizedBox(height: 30),

            Text(
              question.question,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 40),

            for (int i = 0; i < question.answers.length; i++)
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: SizedBox(
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () => checkAnswer(i),
                    child: Text(
                      question.answers[i],
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),

            const Spacer(),

            LinearProgressIndicator(
              value: (currentQuestion + 1) / widget.questions.length,
            ),
          ],
        ),
      ),
    );
  }
}