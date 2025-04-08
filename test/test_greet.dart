import 'package:test/test.dart';
import 'package:test_generation_for_dart_using_gemini_api/test_generation_for_dart_using_gemini_api.dart'
    show greet;

void main() {
  group('greet function tests', () {
    test('should return a greeting message', () {
      expect(greet('John'), equals('Hello, John!'));
    });
  });
}
