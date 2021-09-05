import 'package:dart_koans/chapter_2_about_string.dart';
import 'package:test/test.dart';

const dynamic your_answer = null;

void main() {
  late Chapter_II_about_string subject;

  group('About Strings', () {
    setUp(() {
      subject = Chapter_II_about_string();
    });

    test("koan_double_quoted_strings_are_strings", () {
      expect(
        () => subject.koan_double_quoted_strings_are_strings(),
        throwsA(isA<AssertionError>()),
      );
    });
    test("koan_single_quoted_strings_are_strings", () {
      expect(
        () => subject.koan_single_quoted_strings_are_strings(),
        throwsA(isA<AssertionError>()),
      );
    });
    test("koan_triple_quoted_strings_are_also_strings", () {
      expect(
        () => subject.koan_triple_quoted_strings_are_also_strings(),
        throwsA(isA<AssertionError>()),
      );
    });
    test("koan_triple_single_quoted_strings_work_too", () {
      expect(
        () => subject.koan_triple_single_quoted_strings_work_too(),
        throwsA(isA<AssertionError>()),
      );
    });
    test("koan_raw_strings_are_also_strings", () {
      expect(
        () => subject.koan_raw_strings_are_also_strings(),
        throwsA(isA<AssertionError>()),
      );
    });
    test("koan_use_single_quotes_to_create_string_with_double_quotes", () {
      expect(
        () => subject
            .koan_use_single_quotes_to_create_string_with_double_quotes(),
        throwsA(isA<AssertionError>()),
      );
    });
    test("koan_use_double_quotes_to_create_string_with_single_quotes", () {
      expect(
        () => subject
            .koan_use_double_quotes_to_create_string_with_single_quotes(),
        throwsA(isA<AssertionError>()),
      );
    });
    test("koan_use_backslash_for_escaping_quotes_in_strings", () {
      expect(
        () => subject.koan_use_backslash_for_escaping_quotes_in_strings(),
        throwsA(isA<AssertionError>()),
      );
    });
    test("koan_triple_quoted_strings_can_span_lines", () {
      expect(
        () => subject.koan_triple_quoted_strings_can_span_lines(),
        throwsA(isA<AssertionError>()),
      );
    });
    test("koan_triple_quoted_strings_need_less_escaping", () {
      expect(
        () => subject.koan_triple_quoted_strings_need_less_escaping(),
        throwsA(isA<AssertionError>()),
      );
    });
    test("koan_escaping_quotes_at_the_end_of_a_triple_quoted_string", () {
      expect(
        () =>
            subject.koan_escaping_quotes_at_the_end_of_a_triple_quoted_string(),
        throwsA(isA<AssertionError>()),
      );
    });
    test("koan_plus_concatenates_strings", () {
      expect(
        () => subject.koan_plus_concatenates_strings(),
        throwsA(isA<AssertionError>()),
      );
    });

    test("koan_\$_is_a_better_concatination", () {
      expect(
        () => subject.koan_$_is_a_better_concatination(),
        throwsA(isA<AssertionError>()),
      );
    });
    test("koan_dollar_plus_curly_brackets_allows_attributes_selection", () {
      expect(
        () => subject
            .koan_dollar_plus_curly_brackets_allows_attributes_selection(),
        throwsA(isA<AssertionError>()),
      );
    });
    test("koan_adjacent_strings_are_concatenated_automatically", () {
      expect(
        () => subject.koan_adjacent_strings_are_concatenated_automatically(),
        throwsA(isA<AssertionError>()),
      );
    });
    test("koan_plus_will_not_modify_the_original_strings", () {
      expect(
        () => subject.koan_plus_will_not_modify_the_original_strings(),
        throwsA(isA<AssertionError>()),
      );
    });
    test("koan_plus_equals_will_append_to_the_end_of_the_string", () {
      expect(
        () => subject.koan_plus_equals_will_append_to_the_end_of_the_string(),
        throwsA(isA<AssertionError>()),
      );
    });
    test("koan_plus_equals_also_leaves_original_string_unmodified", () {
      expect(
        () => subject.koan_plus_equals_also_leaves_original_string_unmodified(),
        throwsA(isA<AssertionError>()),
      );
    });
  });
}
