void main() {
  List<int> scores = [50, 75, 20, 99];
  scores[0] = 50;
  print(scores[0]);

  scores.add(100);
  //scores.remove(20);
  //scores.removeLast();
  //scores.shuffle();

  //print(scores);
  //print(scores.length);
  print(scores.indexOf(99));

  Set<String> names = {"mario", "luigi", "peach"};

  names.add("bowser");
  names.add('peach');
  names.remove('lungi');
  print(names);

  print(names.length);
}
