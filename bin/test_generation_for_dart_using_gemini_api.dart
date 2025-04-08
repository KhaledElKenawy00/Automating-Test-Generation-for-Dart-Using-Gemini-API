import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

const String geminiApiKey = 'YOUR_GEMINI_API_KEY'; // Replace with your actual Gemini API key

final Map<String, String> functions = {
  'add': '''
int add(int a, int b) {
  return a + b;
}
''',
  'isEven': '''
bool isEven(int number) {
  return number % 2 == 0;
}
''',
  'greet': '''
String greet(String name) {
  return 'Hello, ' + name + '!';
}
''',
  'factorial': '''
int factorial(int n) {
  if (n == 0) return 1;
  return n * factorial(n - 1);
}
''',
  'fibonacci': '''
int fibonacci(int n) {
  if (n <= 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}
''',
  'isPalindrome': '''
bool isPalindrome(String str) {
  return str == str.split('').reversed.join('');
}
''',
  'max': '''
int max(int a, int b) {
  return a > b ? a : b;
}
''',
  'sumOfList': '''
int sumOfList(List<int> numbers) {
  return numbers.fold(0, (previousValue, element) => previousValue + element);
}
''',
};

Future<String> generateTest(String functionName, String functionCode) async {
  final uri = Uri.parse('https://gemini-api-endpoint');  // Replace with actual Gemini API endpoint
  
  final response = await http.post(
    uri,
    headers: {
      'Authorization': 'Bearer $geminiApiKey',
      'Content-Type': 'application/json',
    },
    body: jsonEncode({
      'function_name': functionName,
      'function_code': functionCode,
    }),
  );

  if (response.statusCode == 200) {
    final Map<String, dynamic> responseData = jsonDecode(response.body);
    return responseData['test_code']; // Assuming the Gemini API returns the test code here
  } else {
    throw Exception('Failed to generate test');
  }
}

void saveGeneratedTest(String testCode, String functionName) {
  final filePath = 'test/test_${functionName}.dart';
  final file = File(filePath);

  // Write the generated test code to the test file
  file.writeAsStringSync(testCode);
}

void main() async {
  for (var entry in functions.entries) {
    final functionName = entry.key;
    final functionCode = entry.value;

    print('Generating test for $functionName...');
    try {
      final testCode = await generateTest(functionName, functionCode);
      print('Generated test for $functionName:');
      print(testCode);

      // Save the generated test code to the test file
      saveGeneratedTest(testCode, functionName);

      print('Test saved to test/test_$functionName.dart');
      print('-------------------------------------------------');
    } catch (e) {
      print('Error generating test for $functionName: $e');
    }
  }
}
