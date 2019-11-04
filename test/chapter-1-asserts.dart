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
  group("Chapter I: Expectations => ", () {
    test('Try to fix the following tests', () {});

    test('Should expect true', () {
      print("Your journey begins here: ");
      expect(true, false, reason: "Replace the word 'false' with 'true'");
    });
  });
}
