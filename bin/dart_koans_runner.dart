import 'dart:io';

import 'package:ansicolor/ansicolor.dart';
import 'package:dart_koans/chapter_1_about_asserts_tests.dart';
import 'dart:mirrors';

void main() {
  /// TODO: Support Multiple Classes
  ClassMirror classMirror = reflectClass(AboutAsserts);
  Map<Symbol, MethodMirror> learningPathMethods =
      classMirror.instanceMembers;
  bool isError = false;
  bool checkChapterFinished = false;
  int index = 0;

  print("");
  print(
    "Thinking About ${_createSymbolString(classMirror.simpleName)}",
  );

  /// TODO: Change maybe to a for loop
  while (!isError && learningPathMethods.length != index) {
    var entry = learningPathMethods.entries.toList()[index];
    index++;
    if (entry.value.simpleName.toString().contains("koan_")) {
      try {
        var aboutAsserts = AboutAsserts();
        var instance = reflect(aboutAsserts);
        instance.invoke(entry.key, []);
        AnsiPen pen = new AnsiPen()..green(bold: true);
        print(
          pen("✓ ${_createSymbolString(entry.key)} has expanded your awarness."),
        );
      } catch (e) {
        AnsiPen penError = new AnsiPen()..red(bold: true);
        AnsiPen penWarning = new AnsiPen()..yellow(bold: true);
        print(
          penError(
              "✖ ${_createSymbolString(entry.key)} has destroyed your karma"),
        );
        print("");
        print("Please think about the following:");
        print(penWarning(e.toString()));
        isError = true;
      }
    }
  }
  if (!isError) {
    AnsiPen penSuccess = new AnsiPen()..green(bold: true);
    print("");
    print(
      penSuccess(
        'You completed ${_createSymbolString(classMirror.simpleName)} successful! 🎉🎉🎉',
      ),
    );
  }
}

/// Create the method name out of a Symbol
String _createSymbolString(Symbol symbol) =>
    symbol.toString().split('"')[1];
