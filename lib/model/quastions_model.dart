class Questions {
  const Questions({
    required this.text,
    required this.image,
    required this.answers,
  });
  final String text;
  final String image;
  final List<Answers> answers;
}

class Answers {
  const Answers({
    required this.text,
    this.isTrue = false,
  });
  final String text;
  final bool isTrue;
}

List<Questions> asiaQuastions = [q1, q2, q3, q4, q5, q6, q7];

const q1 = Questions(text: 'Бишкек', image: 'bishkek.jpg', answers: [
  Answers(text: 'Кыргызстан', isTrue: true),
  Answers(text: 'Россия'),
  Answers(text: 'Казакстан'),
  Answers(text: 'Кытай'),
]);

const q2 = Questions(text: 'Астана', image: 'astana.png', answers: [
  Answers(text: 'Россия'),
  Answers(text: 'Казакстан', isTrue: true),
  Answers(text: 'Кыргызстан'),
  Answers(text: 'Кытай'),
]);

const q3 = Questions(text: 'Москва', image: 'moskow.png', answers: [
  Answers(
    text: 'Кыргызстан',
  ),
  Answers(text: 'Россия', isTrue: true),
  Answers(text: 'Туркия '),
  Answers(text: 'Корея'),
]);

const q4 = Questions(text: 'Париж', image: 'paris.png', answers: [
  Answers(text: 'Франция', isTrue: true),
  Answers(text: 'Россия'),
  Answers(text: 'Турция'),
  Answers(text: 'Кытай'),
]);
const q5 = Questions(text: 'Пекин', image: 'pekin.png', answers: [
  Answers(
    text: 'Kyrgyzstan',
  ),
  Answers(text: 'Корея'),
  Answers(text: 'Россия'),
  Answers(text: 'Кытай', isTrue: true),
]);
const q6 = Questions(text: 'Сеул', image: 'seul.png', answers: [
  Answers(text: 'Сингапур'),
  Answers(text: 'Корея', isTrue: true),
  Answers(text: 'Россия'),
  Answers(text: 'Кытай'),
]);

const q7 = Questions(text: 'Токио ', image: 'tokio.png', answers: [
  Answers(text: 'Китай'),
  Answers(text: 'Корея'),
  Answers(text: 'Япония', isTrue: true),
  Answers(text: 'Сингапур'),
]);
