import 'package:test/test.dart';

const your_answer = null;

void main() {
  group('About Strings', () {
    test('Double quoted strings are strings', () {
      var string = "Hello, world";
      expect(your_answer, isA<String>());
    });

    test('single quoted strings are strings', () {
      var string = 'Goodbye, world';
      expect(your_answer, isA<String>());
    });

    test('triple quoted strings are also strings', () {
      var string = """Hallo Welt""";
      expect(your_answer, isA<String>());
    });

    test('triple single quoted strings work too', () {
      var string = '''Bonjour tout le monde!''';
      expect(your_answer, isA<String>());
    });

    test('raw strings are also strings', () {
      var string = r"Konnichi wa, world!";
      expect(your_answer, isA<String>());
    });

    test('use single quotes to create string with double quotes', () {
      var string = 'He said, "Go Away."';
      assert(your_answer, string);
    });

    test("use double quotes to create string with single quotes", () {
      var string = "Don't";
      expect(your_answer, string);
    });

    test("use backslash for escaping quotes in strings", () {
      var a = "He said, \"Don't\"";
      var b = 'He said, "Don\'t"';
      assert(your_answer, a == b);
    });

    test("triple quoted strings can span lines", () {
      var string = """
      Greetings,
      Partner!
      """;

      expect(your_answer, string.length);
    });

    test("triple quoted strings need less escaping", () {
      var a = "Hello \"world\".";
      var b = """Hello "world".""";

      expect(your_answer, a == b);
    });

    test("escaping quotes at the end of a triple quoted string", () {
      var string = """Hello "world\"""";
      expect(your_answer, string);
    });

    test("plus concatenates strings", () {
      var string = "Hello" + ", " + "World";
      expect(your_answer, string);
    });

    test("\$ is a better concatination", () {
      var a = "Hello";
      var b = "World";

      expect(your_answer, "$a, $b");
    });

    test("With \${} you are able to access attributes and concatinate them",
        () {
      var string = "Concatination is great!";
      expect(your_answer, "${string.length}");
    });

    test("adjacent strings are concatenated automatically", () {
      var string = "Hello" ", " "World";
      expect(your_answer, string);
    });

    test("plus will not modify the original strings", () {
      var foo = "Hello, ";
      var bar = "World";
      var string = foo + bar;

      expect(your_answer, foo);
      expect(your_answer, bar);
    });

    test("plus equals will append to the end of the string", () {
      var foo = "Hello, ";
      var bar = "World";
      foo += bar;
      expect(your_answer, foo);
    });

    test("plus equals also leaves original string unmodified", () {
      var original = "Hello, ";
      var foo = original;
      var bar = "World";
      foo += bar;
      expect(your_answer, original);
    });
  });
}
