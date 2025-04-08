import 'package:test/test.dart';
import 'package:test_generation_for_dart_using_gemini_api/test_generation_for_dart_using_gemini_api.dart';

void main() {
  group('isPalindrome function tests', () {
    test('should return true for palindromic strings', () {
      expect(isPalindrome('madam'), isTrue);
      expect(isPalindrome('racecar'), isTrue);
    });

    test('should return false for non-palindromic strings', () {
      expect(isPalindrome('hello'), isFalse);
      expect(isPalindrome('world'), isFalse);
    });

    test('should return true for empty string', () {
      expect(isPalindrome(''), isTrue);
    });
  });
}
