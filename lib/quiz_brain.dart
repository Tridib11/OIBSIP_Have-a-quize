import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  final List<Question> _questionBank = [
    Question('Mexico achieved independence before USA', false),
    Question('Henry VIII wife Anne Boleyn was executed.', true),
    Question('Alexander the Great became Pharaoh of Egypt.', true),
    Question('The Parthenon was built before the Colossus of Rhodes.', true),
    Question('The Magna Carta was signed in Rome.', false),
    Question('Nero was the first Roman Emperor.', false),
    Question(
        'Marie Antoinette was married to Louis XVI.',
        true),
    Question(
        'Cleopatra had a child with Julius Caesar.',
        true),
    Question(
        'No US Presidents have been born in Missouri.',
        false),
    Question(
        'Sir Winston Churchill was a Labour Prime Minister.',
        false),
    Question('Custer was defeated at Little Bighorn', true),
    Question(
        'The Iron Age comes after the Bronze Age.',
        true),
    Question(
        'Joan of Arc fought at the Battle of Agincourt.',
        false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }


  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {

      return true;

    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}