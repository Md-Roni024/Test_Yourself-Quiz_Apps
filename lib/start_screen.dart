import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        //Transparency by using color argument
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 250,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),

          // Opacity Widget
          // Opacity(
          //   opacity: 0.6,
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png',
          //     width: 250,
          //   ),
          // ),
          const SizedBox(
            height: 50,
          ),
          Text(
            'Learn flutter with fun way.',
            style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 237, 223, 252), fontSize: 24),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text('Start Quiz'))
        ],
      ),
    );
  }
}
