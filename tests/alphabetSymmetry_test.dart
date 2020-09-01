import 'package:test/test.dart';
import '../challenges/alphabetSymmetry.dart';

main(List<String> args) {
  void testing(List<String> textList, List<int> expected) {
    test('Test $textList', () {
      expect(solve(textList), expected);
    });
  }

  group('Testes', () {
    testing(["abode","ABc","xyzD"], [4, 3, 1]);
    testing(["IAMDEFANDJKL", "thedefgh", "xyzDEFghijabc"], [6, 5, 7]);
    testing(["encode", "abc", "xyzD", "ABmD"], [1, 3, 1, 3]);
    testing([], []);
  });
}