import 'package:flutter/material.dart';
import 'package:game_test/components/appbar_widget.dart';
import 'package:game_test/components/custom_button.dart';
import 'package:game_test/components/slider_widget.dart';
import 'package:game_test/model/quastions_model.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key, required this.quastions});

  final List<Questions> quastions;

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  int index = 0;
  int correctAnswers = 0;
  int inCorrectAnswers = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF0F0F0),
      appBar: AppBar(
        backgroundColor: const Color(0xffF0F0F0),
        title: AppBarWidget(
          numberOfQuestions: index + 1,
          correctAnswers: correctAnswers,
          inCorrectAnswers: inCorrectAnswers,
        ),
      ),
      body: Column(
        children: [
          SliderWidget(
            value: index.toDouble(),
          ),
          const SizedBox(height: 10),
          Text(
            widget.quastions[index].text,
            style: const TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w500,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(18, 8, 18, 8),
              child: SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/${widget.quastions[index].image}',
                    fit: BoxFit.fill,
                  )),
            ),
          ),
          CustomButton(
            answers: widget.quastions[index].answers,
            onTap: (bool isTrue) {
              if (isTrue == true) {
                correctAnswers++;
              } else {
                inCorrectAnswers++;
              }
              setState(() {
                index++;
              });
              if (index == widget.quastions.length) {
                index--;
                showDialog<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Жыйынтык!'),
                      content: Text('Туура жооптор: $correctAnswers\n'
                          'Ката жоортор: $inCorrectAnswers\n'),
                      actions: <Widget>[
                        TextButton(
                          style: TextButton.styleFrom(
                            textStyle: Theme.of(context).textTheme.labelLarge,
                          ),
                          child: const Text('Кайрадан баштоо'),
                          onPressed: () {
                            Navigator.of(context).pop();
                            setState(() {
                              index = 0;
                              correctAnswers = 0;
                              inCorrectAnswers = 0;
                            });
                          },
                        ),
                      ],
                    );
                  },
                );

                // _dialogBuilder(context);
              }
            },
          ),
        ],
      ),
    );
  }
}


  //  GlassmorphicFlexContainer(
  //                 borderRadius: 20,
  //                 blur: 20,
  //                 padding: EdgeInsets.all(40),
  //                 alignment: Alignment.bottomCenter,
  //                 border: 2,
  //                 linearGradient: LinearGradient(
  //                     begin: Alignment.topLeft,
  //                     end: Alignment.bottomRight,
  //                     colors: [
  //                       Color(0xFFffffff).withOpacity(0.1),
  //                       Color(0xFFFFFFFF).withOpacity(0.05),
  //                     ],
  //                     stops: [
  //                       0.1,
  //                       1,
  //                     ]),
  //                 borderGradient: LinearGradient(
  //                   begin: Alignment.topLeft,
  //                   end: Alignment.bottomRight,
  //                   colors: [
  //                     Color(0xFFffffff).withOpacity(0.5),
  //                     Color((0xFFFFFFFF)).withOpacity(0.5),
  //                   ],
  //                 ),
  //                 child: null,
  //               );