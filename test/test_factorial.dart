import 'package:test/test.dart';
import 'package:test_generation_for_dart_using_gemini_api/test_generation_for_dart_using_gemini_api.dart';

void main() {
  group('factorial function tests', () {
    test('should return 1 for 0', () {
      expect(factorial(0), equals(1));
    });

    test('should return the correct factorial for positive numbers', () {
      expect(factorial(5), equals(120));
      expect(factorial(6), equals(720));
    });

    test('should return correct factorial for large numbers', () {
      expect(factorial(10), equals(3628800));
    });
  });
}
