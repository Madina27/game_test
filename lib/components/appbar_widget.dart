import 'package:flutter/material.dart';
import 'package:game_test/model/quastions_model.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
    required this.numberOfQuestions,
    required this.correctAnswers,
    required this.inCorrectAnswers,
  });

  final int numberOfQuestions;
  final int correctAnswers;
  final int inCorrectAnswers;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            child: Row(
              children: [
                Text(
                  '$inCorrectAnswers',
                  style: const TextStyle(fontSize: 16, color: Colors.red),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    asiaQuastions.length.toString(),
                    style: const TextStyle(
                      fontSize: 18,
                      // color: Colors.green,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Text(
                  '$correctAnswers',
                  style: const TextStyle(fontSize: 16, color: Colors.green),
                ),
              ],
            ),
          ),
        ),
        Text(
          '$numberOfQuestions',
          style: const TextStyle(
            fontSize: 22,
          ),
        ),
        Row(
          children: [
            SizedBox(
              width: 70,
              height: 30,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    );
                  }),
            ),
            const Icon(Icons.more_vert),
          ],
        )
      ],
    );
  }
}
