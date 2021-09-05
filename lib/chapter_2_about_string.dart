class Chapter_II_about_string {
  dynamic your_answer = null;

  void koan_double_quoted_strings_are_strings() {
    var double_quoted_string = "Hello, world";
    assert(your_answer is String, "Hint: Replace your_answer with string");
  }

  void koan_single_quoted_strings_are_strings() {
    var single_quoted_string = 'Goodbye, world';
    assert(your_answer is String, "Hint: Replace your_answer with string");
  }

  void koan_triple_quoted_strings_are_also_strings() {
    var triple_quoted_string = """Hallo Welt""";
    assert(your_answer is String,
        "Hint Replace your_answer with triple_quoted_string");
  }

  void koan_triple_single_quoted_strings_work_too() {
    var triple_single_quoted_string = '''Bonjour tout le monde!''';
    assert(your_answer is String,
        "Hint Replace your_answer with triple_single_quoted_string");
  }

  void koan_raw_strings_are_also_strings() {
    var rawString = r"Konnichi wa, world!";
    assert(your_answer is String, "Hint Replace your_answer with rawString");
  }

  void koan_use_single_quotes_to_create_string_with_double_quotes() {
    var string = 'He said, "Go Away."';
    assert(your_answer == string);
  }

  void koan_use_double_quotes_to_create_string_with_single_quotes() {
    var string = "Don't";
    assert(your_answer == string);
  }

  void koan_use_backslash_for_escaping_quotes_in_strings() {
    var a = "He said, \"Don't\"";
    var b = 'He said, "Don\'t"';
    assert(a != b);
  }

  void koan_triple_quoted_strings_can_span_lines() {
    var string = """
      Greetings,
      Partner!
      """;

    assert(your_answer == string.length);
  }

  void koan_triple_quoted_strings_need_less_escaping() {
    var a = "Hello \"world\".";
    var b = """Hello "world".""";

    assert(a != b);
  }

  void koan_escaping_quotes_at_the_end_of_a_triple_quoted_string() {
    var string = """Hello "world\"""";
    assert(your_answer == string);
  }

  void koan_plus_concatenates_strings() {
    var string = "Hello" + ", " + "World";
    assert(your_answer == string);
  }

  void koan_$_is_a_better_concatination() {
    var a = "Hello";
    var b = "World";

    assert(your_answer == "$a, $b");
  }

  void koan_dollar_plus_curly_brackets_allows_attributes_selection() {
    var string = "Concatenation is great!";
    assert(your_answer == "${string.length}");
  }

  void koan_adjacent_strings_are_concatenated_automatically() {
    var string = "Hello" ", " "World";
    assert(your_answer == string);
  }

  void koan_plus_will_not_modify_the_original_strings() {
    var foo = "Hello, ";
    var bar = "World";
    var string = foo + bar;

    assert(your_answer == foo);
    assert(your_answer == bar);
  }

  void koan_plus_equals_will_append_to_the_end_of_the_string() {
    var foo = "Hello, ";
    var bar = "World";
    foo += bar;
    assert(your_answer == foo);
  }

  void koan_plus_equals_also_leaves_original_string_unmodified() {
    var original = "Hello, ";
    var foo = original;
    var bar = "World";
    foo += bar;
    assert(your_answer == original);
  }
}
