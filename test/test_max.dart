import 'package:test/test.dart';
import 'package:test_generation_for_dart_using_gemini_api/test_generation_for_dart_using_gemini_api.dart';

void main() {
  group('max function tests', () {
    test('should return the greater of two positive numbers', () {
      expect(max(5, 3), equals(5));
      expect(max(2, 8), equals(8));
    });

    test('should return the greater of two negative numbers', () {
      expect(max(-5, -3), equals(-3));
      expect(max(-2, -8), equals(-2));
    });

    test('should return the correct value when one number is zero', () {
      expect(max(0, 5), equals(5));
      expect(max(5, 0), equals(5));
    });
  });
}
