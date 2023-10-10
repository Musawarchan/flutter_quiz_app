import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Image(
            height: 300,
            image: AssetImage('assets/images/quiz-logo.png'),
            color: Color.fromARGB(179, 255, 255, 255),
          ),
          const SizedBox(height: 80),
          Text('Learn Flutter the fun Way!',
              style: GoogleFonts.lato(
                fontSize: 24,
                color: Colors.white,
              )),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: Icon(Icons.arrow_right_alt),
            label: const Text(
              'Start Quiz',
            ),
          )
        ],
      ),
    );
  }
}
