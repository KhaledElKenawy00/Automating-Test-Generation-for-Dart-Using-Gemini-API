# Automating Test Generation for Dart Using Gemini API

This project demonstrates the use of the **Gemini API** to automate the generation of unit tests for Dart functions. By utilizing the power of **Large Language Models (LLMs)**, the tool generates tests for Dart functions based on their source code. This project aims to automate the process of test generation and improve testing workflows for Dart developers.

## Features:

- **Automated Test Generation**: Automatically generates unit tests for Dart functions using the Gemini API.
- **Multiple Dart Functions**: Includes various Dart functions to test the tool's functionality, including basic operations, recursion (factorial), series (fibonacci), string manipulation (palindrome check), and list operations.
- **Test Generation for Functions**: Currently supports test generation for a variety of function types such as mathematical, logical, and string manipulation functions.
- **Easy Setup**: Simple setup and usage for Dart developers to generate tests with just a few lines of code.

## Key Dart Functions Included:

- **Addition (`add`)**: Adds two integers.
- **Even Check (`isEven`)**: Checks if a number is even.
- **Greeting (`greet`)**: Returns a greeting string.
- **Factorial (`factorial`)**: Calculates the factorial of a number.
- **Fibonacci (`fibonacci`)**: Calculates the nth Fibonacci number.
- **Palindrome Check (`isPalindrome`)**: Checks if a string is a palindrome.
- **Maximum of Two Numbers (`max`)**: Finds the maximum of two numbers.
- **Sum of List (`sumOfList`)**: Calculates the sum of numbers in a list.

## Setup:

### 1. **Gemini API Key**:
- Obtain an API key from [Gemini API Documentation](https://ai.google.dev/gemini-api/docs/api-key).
- Replace `'YOUR_GEMINI_API_KEY'` in the code with your API key.

### 2. **Dependencies**:
Ensure that you have the `http` package installed in your Dart project. Add this to your `pubspec.yaml` file:

```yaml
dependencies:
  http: ^0.13.3
