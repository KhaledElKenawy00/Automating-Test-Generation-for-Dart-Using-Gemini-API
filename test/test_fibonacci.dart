import 'package:test/test.dart';
import 'package:test_generation_for_dart_using_gemini_api/test_generation_for_dart_using_gemini_api.dart';

void main() {
  group('fibonacci function tests', () {
    test('should return 0 for input 0', () {
      expect(fibonacci(0), equals(0));
    });

    test('should return 1 for input 1', () {
      expect(fibonacci(1), equals(1));
    });

    test('should return correct fibonacci number for positive inputs', () {
      expect(fibonacci(5), equals(5));
      expect(fibonacci(6), equals(8));
      expect(fibonacci(10), equals(55));
    });
  });
}
