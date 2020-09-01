import 'package:test/test.dart';
import '../challenges/smileyFaces.dart';

main(List<String> args) {
  int count = 0;

  void testing(List<String> smileyFaces, int expected) {
    count++;
    test('test #$count', () {
      expect(countSmileyFaces(smileyFaces), expected);
    });
  }

  group('Grupo de testes:', () {
    testing([':)', ';(', ';}', ':-D'], 2);
    testing([';D', ':-(', ':-)', ';~)'], 3);
    testing([';]', ':[', ';*', ':\$', ';-D'], 1);
  });
}