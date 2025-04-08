// lib/your_code.dart

// Function 1: add
int add(int a, int b) {
  return a + b;
}

// Function 2: isEven
bool isEven(int number) {
  return number % 2 == 0;
}

// Function 3: greet
String greet(String name) {
  return 'Hello, ' + name + '!';
}

// Function 4: factorial
int factorial(int n) {
  if (n == 0) return 1;
  return n * factorial(n - 1);
}

// Function 5: fibonacci
int fibonacci(int n) {
  if (n <= 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

// Function 6: isPalindrome
bool isPalindrome(String str) {
  return str == str.split('').reversed.join('');
}

// Function 7: max
int max(int a, int b) {
  return a > b ? a : b;
}

// Function 8: sumOfList
int sumOfList(List<int> numbers) {
  return numbers.fold(0, (previousValue, element) => previousValue + element);
}
