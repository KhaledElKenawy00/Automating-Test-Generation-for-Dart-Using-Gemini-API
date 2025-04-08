import 'package:test/test.dart';
import 'package:test_generation_for_dart_using_gemini_api/test_generation_for_dart_using_gemini_api.dart';

void main() {
  group('isEven function tests', () {
    test('should return true for even numbers', () {
      expect(isEven(2), isTrue);
    });

    test('should return false for odd numbers', () {
      expect(isEven(3), isFalse);
    });
  });
}
