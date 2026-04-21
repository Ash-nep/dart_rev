void main() {
  List<int> scores = [50, 75, 30, 99, 100, 30];

  for (int score in scores.where((s) => s <  50)) {
      print('the score is $score');
   
  }
}
