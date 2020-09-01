List<String> wave(String text) {
  final List<String> lettersList = text.split('');

  List<String> waveWordsList = [];

  for (var i = 0; i < lettersList.length; i++) {
    if (lettersList[i] != ' ') {
      final List<String> word = lettersList.map((e) => e).toList();

      word[i] = word[i].toUpperCase();

      waveWordsList.add(word.join());
    }
  }

  return waveWordsList;
}
