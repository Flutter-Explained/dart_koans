import 'package:test/test.dart';

void main() {
  // Lets get this started. This is a comment you can see it by the '//'
  /**  With /** */ you can also create a multi line comment.
   * This gives you helpful
   * information about the code and helps
   * you to understand the story of the code.
   * We will use it to give you instructions for the koan.
   */

  /**
   * Lesson I: Learn the tools. You should work here with TDD
   * to learn and improve your Dart skills.
   *
   * Try to fix the following tests
   */
  group('About Asserts', () {
    test('Should expect true', () {
      print('Your journey begins here: ');
      expect(true, false, reason: "Hint: Replace the word 'false' with 'true'");
    });

    test('We will compare often values with each other', () {
      var expectedValue = 0;
      var realValue = 1 + 1;

      expect(realValue, expectedValue,
          reason: 'Hint: The expectedValue seems to be wrong');
    });

    test('Also the type is important', () {
      // This is a variable it can store all kinds of data
      // by just initialize it with the *var* keyword
      var expectedValue = '2';

      // You can also be precise and enter the type of the variable before
      int realValue = 1 + 1;

      expect(realValue, expectedValue, reason: 'Hint: Is a string a number?');
    });

    test('You will often have to enter values to succeed', () {
      expect('Congratulations!', '',
          reason: 'Hint: Both strings should be identical');
    });

    test('Well done!', () {
      print(
          'Your first lection was successful, and the next gate has opened for you! ');
      print('Chapter 2: About Strings');
      expect(true, false, reason: 'Are you ready for Chapter 2?');
    });
  });
}
