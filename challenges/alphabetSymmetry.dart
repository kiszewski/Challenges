List<int> solve(List<String> textList) {
  List<int> result = [];

  List<String> generateAlphabet() {
    List<String> alphabet = [];

    int c = "a".codeUnitAt(0);
    int end = "z".codeUnitAt(0);

    while (c != end) {
      alphabet.add(String.fromCharCode(c));
      c++;
    }

    return alphabet;
  }

  final List<String> alphabet = generateAlphabet();

  int countSymmetric(String text) {
    int symmetryCount = 0;


    for (var i = 0; i < text.length; i++) {
      if (text[i] == alphabet[i]) {
        symmetryCount++;
      }
    }

    return symmetryCount;
  }

  result =
      textList.map((element) => countSymmetric(element.toLowerCase())).toList();

  return result;
}
