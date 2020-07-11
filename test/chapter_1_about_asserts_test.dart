import 'package:dart_koans/chapter_1_about_asserts.dart';
import 'package:test/test.dart';

main() {
  group("Chapter 1 About Asserts", () {
    Chapter_I_asserts subject;
    setUp(() {
      subject = Chapter_I_asserts();
    });

    test("koan_about_asserts", () {
      expect(
        () => subject.koan_about_asserts(),
        throwsA(isA<AssertionError>()),
      );
    });

    test("koan_compare_values_with_each_other", () {
      expect(
        () => subject.koan_compare_values_with_each_other(),
        throwsA(isA<AssertionError>()),
      );
    });

    test("koan_also_type_is_important", () {
      expect(
        () => subject.koan_also_type_is_important(),
        throwsA(isA<AssertionError>()),
      );
    });

    test("koan_enter_values_to_succeed", () {
      expect(
        () => subject.koan_enter_values_to_succeed(),
        throwsA(isA<AssertionError>()),
      );
    });
  });
}
