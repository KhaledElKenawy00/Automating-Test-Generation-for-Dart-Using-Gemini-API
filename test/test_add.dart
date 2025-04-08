import 'package:test/test.dart';
import 'package:test_generation_for_dart_using_gemini_api/test_generation_for_dart_using_gemini_api.dart';

void main() {
  group('add function tests', () {
    test('should add two positive integers', () {
      expect(add(2, 3), equals(5));
    });

    test('should add negative integers', () {
      expect(add(-2, -3), equals(-5));
    });

    test('should handle adding zero', () {
      expect(add(0, 3), equals(3));
    });
  });
}
