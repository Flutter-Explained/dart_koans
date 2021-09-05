import 'dart:mirrors';

import 'package:ansicolor/ansicolor.dart';
import 'package:dart_koans/chapter_1_about_asserts.dart';
import 'package:dart_koans/chapter_2_about_string.dart';

void main() {
  ansiColorDisabled = false;
  List<Type> runnableChapters = [Chapter_I_asserts, Chapter_II_about_string];
  bool isError = false;
  int classIndex = 0;

  while (!isError && classIndex < runnableChapters.length) {
    ClassMirror classMirror = reflectClass(runnableChapters[classIndex]);
    Map<Symbol, MethodMirror> learningPathMethods = classMirror.instanceMembers;
    int methodIndex = 0;

    print("");
    print(
      "Thinking About ${_createSymbolString(classMirror.simpleName)}",
    );

    while (!isError && learningPathMethods.length != methodIndex) {
      var entry = learningPathMethods.entries.toList()[methodIndex];
      methodIndex++;
      if (entry.value.simpleName.toString().contains("koan_")) {
        try {
          InstanceMirror instance = classMirror.newInstance(Symbol(""), []);
          instance.invoke(entry.key, []);
          AnsiPen pen = new AnsiPen()..green(bold: true);
          print(
            pen("✓ ${_createSymbolString(entry.key)} has expanded your awareness."),
          );
        } catch (e) {
          AnsiPen penError = new AnsiPen()..red(bold: true);
          AnsiPen penWarning = new AnsiPen()..yellow(bold: true);
          print(
            penError("✖ ${_createSymbolString(entry.key)} has destroyed your karma"),
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

    classIndex++;
  }
}

/// Create the method name out of a Symbol
String _createSymbolString(Symbol symbol) => symbol.toString().split('"')[1];
