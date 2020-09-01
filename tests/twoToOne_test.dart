import 'package:test/test.dart';
import '../challenges/twoToOne.dart';

void main() {
  void testing(String a, String b, String expected) {
    test('Testando ${a} e ${b}', () {
      expect(longest(a, b), expected);
    });
  }

  group('Testes', () {
    testing("xyaabbbccccdefww", "xxxxyyyyabklmopq", "abcdefklmopqwxy");
    testing("abcdefghijklmnopqrstuvwxyz", "abcdefghijklmnopqrstuvwxyz", "abcdefghijklmnopqrstuvwxyz");
    testing("lordsofthefallen", "gamekult", "adefghklmnorstu");
  });
}
