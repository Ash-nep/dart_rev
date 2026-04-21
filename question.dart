import 'dart:io';
void main(){
  checkWhetherHeLovesMeOrNot();
}
void checkWhetherHeLovesMeOrNot(){
  final List<String> answers = [];

  String? answer1 = askQuestion('Are you afraid of loosing me? yes/No');
  String? answer2 = askQuestion('Do you still have same feelings for me? yes/No');
  String? answer3 = askQuestion('How can I know whether you loves me or not? yes/No');
  String? answer4 = askQuestion('Why you are not showing any love for me? yes/No');
  String? answer5 = askQuestion('How can I Improve Our relationship? yes/No');
  String? answer6 = askQuestion('Why are making distance between us? yes/No');
  String? answer7 = askQuestion('Are we the real couple? yes/No');
  String? answer8 = askQuestion('We are so distant these days why? yes/No');

  answers.add(answer1!);
  answers.add(answer2!);
  answers.add(answer3!);
  answers.add(answer4!);
  answers.add(answer5!);
  answers.add(answer6!);
  answers.add(answer7!);
  answers.add(answer8!);

  int c = counterPositiveAnswer(answers);
  calculateResult(c);
}

String? askQuestion(String question) {
  print(question);
  String? ans = stdin.readLineSync();
  return ans;
}

void calculateResult(int positiveAnswer){
  double result = positiveAnswer /8 * 100;
  print('The result is $result%');
  if(result >= 50) {
    print('Congratulation !, He loves me');
  } else {
    print('Sorry, He doesnot love me');
  }
}

int counterPositiveAnswer(List<String> answers) {
  int positiveAnswer = 0;

  answers.forEach((answer) {
    final ans = answer.toLowerCase().trim();
    if(ans == 'yes'){
      positiveAnswer++;
    }
  });

  return positiveAnswer;
}