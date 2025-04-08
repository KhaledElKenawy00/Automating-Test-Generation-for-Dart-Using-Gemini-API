import 'package:test/test.dart';
import 'package:test_generation_for_dart_using_gemini_api/test_generation_for_dart_using_gemini_api.dart';

void main() {
  group('sumOfList function tests', () {
    test('should return 0 for an empty list', () {
      expect(sumOfList([]), equals(0));
    });

    test('should return the correct sum for a list of positive integers', () {
      expect(sumOfList([1, 2, 3, 4]), equals(10));
    });

    test('should return the correct sum for a list with negative numbers', () {
      expect(sumOfList([-1, -2, 3, 4]), equals(4));
    });

    test('should return the correct sum for a list with mixed numbers', () {
      expect(sumOfList([5, -3, 10, -7]), equals(5));
    });
  });
}
