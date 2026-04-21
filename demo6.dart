void main() {
  List<int> scores = [50, 75, 30, 99, 100, 30];

  for (int score in scores){
    if (score > 50) {
      print('the score is $score');
    } else {
      print('score not high enough');
    }
  }
}
