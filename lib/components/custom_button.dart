import 'package:flutter/material.dart';
import 'package:game_test/model/quastions_model.dart';

class CustomButton extends StatelessWidget {
 const  CustomButton({
    super.key,
    required this.answers,
    required this.onTap,
  });

  final List<Answers> answers;
   final void Function(bool) onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 147,
          ),
          itemCount: 4,
          itemBuilder: (context, index) {
            final item = answers[index];
            return InkWell(
              onTap: () {
                onTap(item.isTrue);
              },
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2)),
                color: const Color(0xffb4b4b4),
                child: Center(
                    child: Text(
                  item.text,
                  style: const TextStyle(fontSize: 24),
                )),
              ),
            );
          },
        ),
      ),
    );
  }
}
