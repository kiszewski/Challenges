import 'package:test/test.dart';
import '../challenges/mexicanWave.dart';

main(List<String> args) {
  void testing(String text, List<String> expected) {
    test('Test $text', () {
      expect(wave(text), expected);
    });
  }

  group('Testes', () {
    testing('hello', ["Hello", "hEllo", "heLlo", "helLo", "hellO"]);
    testing(' gap', [' Gap', ' gAp', ' gaP']);
    testing('a       b    ', ['A       b    ', 'a       B    ']);
    testing('this is a few words', [
      'This is a few words',
      'tHis is a few words',
      'thIs is a few words',
      'thiS is a few words',
      'this Is a few words',
      'this iS a few words',
      'this is A few words',
      'this is a Few words',
      'this is a fEw words',
      'this is a feW words',
      'this is a few Words',
      'this is a few wOrds',
      'this is a few woRds',
      'this is a few worDs',
      'this is a few wordS'
    ]);
  });
}
