'''Directions:

Write a function that accepts an array of 10 integers (between 0 and 9), that returns a string of those numbers in the form of a phone number.

Example

createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) // => returns "(123) 456-7890"
The returned format must be correct in order to complete this challenge.

Don't forget the space after the closing parentheses!
'''
  
'''Test Cases
import "package:test/test.dart";
import "package:solution/solution.dart";
import "dart:math";

void main() {
  group("Basic tests", () {
    test('Testing for [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]', () => expect(createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]), equals('(123) 456-7890')));
    test('Testing for [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]', () => expect(createPhoneNumber([1, 1, 1, 1, 1, 1, 1, 1, 1, 1]), equals('(111) 111-1111')));
    test('Testing for [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]', () => expect(createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]), equals('(123) 456-7890')));
  });
  group("Random tests", () {
    Random r = Random();
    String sol(List<int> numbers) => numbers.join('').replaceFirstMapped(new RegExp(r'(\d{3})(\d{3})'), (m) => '(${m.group(1)}) ${m.group(2)}-');
    for (int i = 0; i < 100; i++) {
      List<int> a = List.generate(10, (_) => r.nextInt(10));
      String exp = sol(a);
      test("Testing for $a", () => expect(createPhoneNumber(a), equals(exp)));
    }
  });
}
'''

//My Solution

String createPhoneNumber(List numbers) {
  return "(${numbers[0]}${numbers[1]}${numbers[2]}) ${numbers[3]}${numbers[4]}${numbers[5]}-${numbers[6]}${numbers[7]}${numbers[8]}${numbers[9]}";
}
